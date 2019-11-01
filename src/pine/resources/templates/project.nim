const projectNim* = """
import os, parsecfg, times, strutils, htmlgen, markdown, rainbow

import layouts/"baseLayout.nimf"
import layouts/"footerLayout.nimf"
import layouts/"headerLayout.nimf"
import layouts/"indexLayout.nimf"
import layouts/"postLayout.nimf"
import layouts/"pageLayout.nimf"

import public/"codeBadReqContent.nimf"
import public/"codeForbiddenContent.nimf"
import public/"codeNotFoundContent.nimf"
import public/"codeUnAuthContent.nimf"

var dict = loadConfig("config.nim.cfg")


let 
  postTime = getdateStr(now())
  dt = parse(postTime, "yyyy-MM-dd")
  yearNow = dt.format("yyyy")
  postDate = dt.format("dd-MM-yyyy")


#Configuration vars
let
  dir = getCurrentDir()
  appDir = joinPath(dir, "build")
  pages = joinPath(dir, "pages") 
  posts = joinPath(dir, "posts") 
  assetsDir = joinPath(appDir, "assets")
  cssDir = joinPath(assetsDir, "css")
  jsDir = joinPath(assetsDir, "js")
  imgDir = joinPath(assetsDir, "img")
  postsDir = joinPath(appDir, "posts")
  pagesDir = joinPath(appDir, "pages")
  title = dict.getSectionValue("BASIC","BASE_TITLE")
  url = dict.getSectionValue("BASIC", "URL")
  smalldesc = dict.getSectionValue("BASIC", "SMALL_DESC")
  metaDesc = dict.getSectionValue("META","META_DESC")
  metaKey = dict.getSectionValue("META","META_KEY")
  metaAuth = dict.getSectionValue("META","META_AUTH")
  gaCode = dict.getSectionValue("GA", "GA_CODE")
  disqus = dict.getSectionValue("DISQUS", "DISQUS_LINK")



proc getPagesLinks*(pages: string): string =
  for key, path in walkDir(pages):
    let file = replace(path, pages & "/", "")
    if not file.startsWith("_"):
      let 
        fileName = replace(file, ".html", "")
        htmlLink = li(a(href="pages/" & file, fileName))
      result &= htmlLink

proc getHeaderLinks*(pages: string): string =
  for key, path in walkDir(pages):
    let file = replace(path, pages & "/", "")
    if not file.startsWith("_"):
      let 
        fileName = replace(file, ".html", "")
        headLink = li(a(href="../pages/" & file, fileName))
      result &= headLink
    
proc getAllPosts*(posts: string): string =
  for key, path in walkDir(posts):
    let file = replace(path, posts & "/", "")
    if not file.startsWith("_"):
      let
        fileName = replace(file, ".html", "")
        cleanDash = replace(fileName, "_", " ")
        postContent = `div`(class="post", "\n", "    ", article(class="post_link", "\n", "\t", p(class="type_date", postDate), "\n", "\t", h1(class="type_title", a(href="posts/" & file, cleanDash)), "\n", "\t", a(href="posts/" & file, class="read_more", "\n", "\t  ", button(class="read_more_button", "Read More", span("&rsaquo;"))), "\n", "\t", a(href= url & "/posts/" & file & "#disqus_thread", class="comment_count", i(class="far fa-comments"), " Comments")))
      result &= postContent


let 
  links = getPagesLinks(pagesDir) 
  headerLinks = getHeaderLinks(pagesDir) 
  base = baseLayout(title, metaDesc, metaKey, metaAuth, gaCode)
  footer = footerLayout(title, yearNow, disqus)
  header = headerLayout(title, links) 
  body = getAllPosts(postsDir)


proc createPagesHtml*(pages: string): string =
  for key, path in walkDir(pages):
    let 
      file = readFile(path)
      body = markdown(file)
      fileName = replace(path, pages, "")
      fileLast = replace(fileName, ".md", "")
      pageTitle = replace(fileLast, "/", "")
      pageFile = pageLayout(title, pageTitle, base, headerLinks, body, url, footer)
    writeFile(pagesDir / fileLast & ".html", pageFile)

proc createPostsHtml*(posts: string): string =
  for key, path in walkDir(posts):
    let
      fileContent = readFile(path)
      body = markdown(fileContent)
      file = replace(path, posts, "")
      fileName = replace(file, ".md", "")
      fileLast = replace(fileName, "/", "")
      articleTitle = replace(fileLast, "_", " ")
      postName = fileName & ".html"
      postFile = postLayout(articleTitle, title,  base, headerLinks, postDate, body, url, postName, disqus, footer)
    writeFile(postsDir / fileName & ".html", postFile)

proc buildStatic(foldername: string) =
  block buildAppDir:
    if not existsDir(appDir):
      createDir(appDir)   

  block buildAssetsDir:
    if not existsDir(assetsDir):
      createDir(assetsDir)
    

  block buildCssDir:
    if not existsDir(cssDir):
      createDir(cssDir)
    

  block createCssFile:
    let cssContent = readFile("assets/css/style.css")
    writeFile(cssDir / "style.css", cssContent)
    

  block buildJsDir:
    if not existsDir(jsDir):
      createDir(jsDir)
    

  block createJsFile:
    let jsContent = readFile("assets/js/main.js")
    writeFile(jsDir / "main.js", jsContent)


  block buildImgDir:
    if not existsDir(imgDir):
      createDir(imgDir)
   


  block buildPostsDir:
    if not existsDir(postsDir):
      createDir(postsDir)
    

  block buildPagesDir:
    if not existsDir(pagesDir):
      createDir(pagesDir)
    

  # Public Files must be in the root 
  
  let codeBadReqContent = badReqContent()
  writeFile(appDir / "400.html", codeBadReqContent)
  

  let codeUnAuthContent = unAuthContent()
  writeFile(appDir / "401.html", codeUnAuthContent)
  

  let codeForbiddenContent = forbiddenContent()
  writeFile(appDir / "403.html", codeForbiddenContent)
  

  let codeNotFoundContent = notFoundContent()
  writeFile(appDir / "404.html", codeNotFoundContent)
  

  

  # Index must take all the posts
  let indexFile = indexLayout(title, metaDesc, metaKey, metaAuth, gaCode, header, smalldesc, body, footer)
  writeFile(appDir / "index.html", indexFile)
  

  discard createPagesHtml(pages)
  discard createPostsHtml(posts)





buildStatic("build")




echo "------------------------------".rfSeaGreen4
echo "You succesfully build your site! Copy files from the 'build' folder and upload it in the internet".rfSeaGreen4
echo "You can also activate GH Pages and deploy automatic with $ pine deploy ".rfSeaGreen4
echo "For more informations please visit: https://github.com/thebigbaron/pine".rfSeaGreen4
echo " "



"""


