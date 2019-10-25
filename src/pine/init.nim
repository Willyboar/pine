import os, strformat, strutils, times, rainbow
import consts

import resources/templates/config
import resources/templates/project
import resources/templates/style

import resources/layouts/base
import resources/layouts/header
import resources/layouts/footer
import resources/layouts/index
import resources/layouts/post
import resources/layouts/page
import resources/layouts/codeBadReqContent
import resources/layouts/codeForbiddenContent
import resources/layouts/codeNotFoundContent
import resources/layouts/codeUnAuthContent



proc newProject*(folderName: string) =
  let
    dir = getCurrentDir()
    appDir = joinPath(dir, folderName)
    assetsDir = joinPath(appDir, "assets")
    cssDir = joinPath(assetsDir, "css")
    jsDir = joinPath(assetsDir, "js")
    imgDir = joinPath(assetsDir, "img")
    layoutDir = joinpath(appDir, "layouts")
    pubDir = joinPath(appDir, "public")
    postsDir = joinPath(appDir, "posts")
    pagesDir = joinPath(appDir, "pages")
    
    
    
  block createAppDir:
    if not existsDir(appDir):
      createDir(appDir)
    echo "------------------------------".rfSeaGreen2
    echo "-* ".rfSeaGreen2 & folderName.rfSeaGreen2

  block createAssetsDir:
    if not existsDir(assetsDir):
      createDir(assetsDir)
    echo "  |-- assets/".rfSeaGreen2

  block createCssDir:
    if not existsDir(cssDir):
      createDir(cssDir)
    echo "\t|-- css/".rfSeaGreen2

  writeFile(cssDir / "style.css", cssCode)
  echo "\t\t|-- style.css".rfSeaGreen2
  

  block createJsDir:
    if not existsDir(jsDir):
      createDir(jsDir)
    echo "\t|-- js/".rfSeaGreen2

  writeFile(jsDir / "main.js", " ")
  echo "\t\t|-- main.js".rfSeaGreen2

  block createImgDir:
    if not existsDir(imgDir):
      createDir(imgDir)
    echo "\t|-- img/".rfSeaGreen2
  
  block createLayoutDir:
    if not existsDir(layoutDir):
      createDir(layoutDir)
    echo "  |-- layouts/".rfSeaGreen2

  writeFile(layoutDir / "baseLayout.nimf", baseNimf)
  echo "\t|-- baseLayout.nimf".rfSeaGreen2

  writeFile(layoutDir / "headerLayout.nimf", headerNimf)
  echo "\t|-- headerLayout.nimf".rfSeaGreen2

  writeFile(layoutDir / "footerLayout.nimf", footerNimf)
  echo "\t|-- footerLayout.nimf".rfSeaGreen2

  writeFile(layoutDir / "indexLayout.nimf", indexNimf)
  echo "\t|-- indexLayout.nimf".rfSeaGreen2

  writeFile(layoutDir / "postLayout.nimf", postNimf)
  echo "\t|-- postLayout.nimf".rfSeaGreen2

  writeFile(layoutDir / "pageLayout.nimf", pageNimf)
  echo "\t|-- pageLayout.nimf".rfSeaGreen2

  block createPostsDir:
    if not existsDir(postsDir):
      createDir(postsDir)
    echo "  |-- posts/".rfSeaGreen2

  block createPagesDir:
    if not existsDir(pagesDir):
      createDir(pagesDir)
    echo "  |-- pages/".rfSeaGreen2

  block createPubDir:
    if not existsDir(pubDir):
      createDir(pubDir)
    echo "  |-- public/".rfSeaGreen2

  writeFile(pubDir / "codeBadReqContent.nimf", badReqContent)
  echo "\t|-- codeBadReqContent.nimf".rfSeaGreen2

  writeFile(pubDir / "codeUnAuthContent.nimf", unAuthContent)
  echo "\t|-- codeUnAuthContent.nimf".rfSeaGreen2

  writeFile(pubDir / "codeForbiddenContent.nimf", forbiddenContent)
  echo "\t|-- codeForbiddenContent.nimf".rfSeaGreen2

  writeFile(pubDir / "codeNotFoundContent.nimf", notFoundContent)
  echo "\t|-- codeNotFoundContent.nimf".rfSeaGreen2



  writeFile(appDir / "config.nim.cfg", configContent)
  echo "  |-- config.nim.cfg".rfSeaGreen2

  writeFile(appDir /  "builder.nim", projectNim)
  echo "  |-- builder.nim".rfSeaGreen2
  
  echo "------------------------------"
  echo "Project Created. Type ".rfYellow1 & " $ cd ".rbGrey15.rfSeaGreen2 & folderName.rbGrey15.rfSeaGreen2 & " ".rbGrey15.rfSeaGreen2 & " to join and create beautifull things!".rfYellow1
  echo " "

  
proc addPost*(postTitle: string) =
  let postsDir = joinPath(getCurrentDir(), "posts")
  let postTrim = replace(postTitle, " ", "_")
  writeFile(postsDir /  postTrim & ".md", "# " & postTitle)

proc addPage*(pageTitle: string) =
  let pagesDir = joinPath(getCurrentDir(), "pages")
  writeFile(pagesDir /  pageTitle & ".md", "# This is the " & pageTitle & " Page")







