const 
  version* = "0.2.0"
  helpdoc* = """

  Welcome to Pine 🌲
  Nim Static Blog Generator

  Usage:

   pine new          [pagetitle]
   pine post         [posttitle]
   pine page         [pagename]
   pine build
   pine init-deploy  [username, reponame]
   pine deploy       [message]

  Options:
  
   -h --help         Show this screen.
   -v --version      Show the pine version and your current Nim version.

  Available commands:

   new               Generates a new Static Site.
   post              Creates a new post.
   page              Creates a new page.
   build             Build the static files
   init-deploy       Initial Deploy your page in GH Pages. Make sure repo exists and gh pages is activated.
   deploy            Deploy in github pages.

"""
  