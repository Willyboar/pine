import os, osproc, parseopt, strutils
import markdown, rainbow



import pine/consts
import pine/init

proc main() =
  for kind, key, val in getopt():
    case kind:
    of cmdEnd: doAssert(false)
    of cmdShortOption, cmdLongOption:
      case key
      of "v", "version": 
        echo "You are running Pine version: ".rfSeaGreen2 & version.rfYellow1 & " and Nim version: ".rfSeaGreen2 & NimVersion.rfYellow1
        quit()
      of "h", "help": 
        echo helpdoc.rfSeaGreen4
        quit()
      else:
        echo "Not exist option.".rfMaroon
        quit()
    of cmdArgument:
      case key
      of "new": 
        echo "Please enter your blog/site title: ".rfDarkOrange1
        var folderName: string = readLine(stdin)
        if folderName == "":
          echo "Project name can't be blank.".rfMaroon
        elif folderName == "pine":
          echo "Please choose another name for your project!".rfMaroon
        else: 
          newProject(folderName)
        quit()
      of "post":
        echo "Enter your post title: ".rfYellow1
        var postTitle : string = readLine(stdin)
        if postTitle != "":
          addPost(postTitle)
        else:
          echo "Post title can't be empty!".rfMaroon
          quit(0)
        echo "Post was created successfully. You can find it in the posts folder.".rfLightGreen2 
        echo "".rfLightGreen2 
        echo "Use markdown syntax to write your post. We are recommended use https://stackedit.io/ for that.".rfLightGreen2 
        quit(1) 
      of "page": 
        echo "Enter your page title: ".rfYellow1
        var pageTitle : string = readLine(stdin)
        if pageTitle != "":
          addPage(pageTitle)
        else:
          echo "Page title can't be empty!".rfMaroon
          quit(0)
        echo "Page was created successfully. You can find it in the pages folder.".rfLightGreen2 
        quit(1)  
      of "build":
        discard execCmd("nim c -r builder.nim" )
        quit()
      of "init-deploy":
        echo " Remember to enable GH Pages from your repository settings".rfHoneydew2
        discard execCmd("git init")
        discard execCmd("git add .")
        discard execCmd("git commit -am 'Initial Commit'")
        echo "Please insert your github username to initial deploy: ".rfYellow1
        var userName: string = readLine(stdin)
        echo "Please insert the repository name of your project. Make sure repository exists in your account: ".rfYellow1
        var repoName: string = readLine(stdin)
        echo "You are maybe prompted to put your password.".rfRed
        discard execCmd("git remote add origin git@github.com:"&  userName & "/" & repoName & ".git")
        discard execCmd("git push -u origin master")
        quit()
      of "deploy":
        discard execCmd("git add .")
        echo "Please enter the commit message: ".rfYellow1
        var commitMessage: string = readLine(stdin)
        discard execCmd("git commit -am"  & "'" &  commitMessage   & "'")
        discard execCmd("git push -u origin master")
      else: 
        echo "Not exist command.".rfMaroon

when isMainModule:
  main()
