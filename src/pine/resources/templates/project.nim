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
  for k, p in walkDir(pages):
    let a = replace(p, pages & "/", "")
    if not a.startsWith("_"):
      let b = replace(a, ".html", "")
      let d = li(a(href="pages/" & a, b))
      result &= d

proc getHeaderLinks*(pages: string): string =
  for k, p in walkDir(pages):
    let a = replace(p, pages & "/", "")
    if not a.startsWith("_"):
      let b = replace(a, ".html", "")
      let e = li(a(href="../pages/" & a, b))
      result &= e
    
proc getAllPosts*(posts: string): string =
  for k, p in walkDir(posts):
    let a = replace(p, posts & "/", "")
    if not a.startsWith("_"):
      let b = replace(a, ".html", "")
      let c = replace(b, "_", " ")
      let d = `div`(class="post", "\n", "    ", article(class="post_link", "\n", "\t", p(class="type_date", postDate), "\n", "\t", h1(class="type_title", c), "\n", "\t", a(href="posts/" & a, class="read_more", "\n", "\t  ", button(class="read_more_button", "Read More", span("&rsaquo;"))), "\n", "\t", a(href= url & "/posts/" & a & "#disqus_thread", class="comment_count", i(class="far fa-comments"), " Comments")))
      result &= d


let 
  links = getPagesLinks(pagesDir) 
  headerLinks = getHeaderLinks(pagesDir) 
  base = baseLayout(title, metaDesc, metaKey, metaAuth, gaCode)
  footer = footerLayout(title, yearNow, disqus)
  header = headerLayout(title, links) 
  body = getAllPosts(postsDir)


proc createPagesHtml*(pages: string): string =
  for k, p in walkDir(pages):
    let d = readFile(p)
    let body = markdown(d)
    let a = replace(p, pages, "")
    let b = replace(a, ".md", "")
    let pageTitle = replace(b, "/", "")
    let pageFile = pageLayout(title, pageTitle, base, headerLinks, body, footer)
    writeFile(pagesDir / b & ".html", pageFile)

proc createPostsHtml*(posts: string): string =
  for k, p in walkDir(posts):
    let d = readFile(p)
    let body = markdown(d)
    let a = replace(p, posts, "")
    let b = replace(a, ".md", "")
    let c = replace(b, "/", "")
    let articleTitle = replace(c, "_", " ")
    let postName = b & ".html"
    let postFile = postLayout(articleTitle, title,  base, headerLinks, postDate, body, url, postName, disqus, footer)
    writeFile(postsDir / b & ".html", postFile)

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
  let indexFile = indexLayout(title, metaDesc, metaKey, metaAuth, gaCode, header, smalldesc, body, disqus, footer)
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


