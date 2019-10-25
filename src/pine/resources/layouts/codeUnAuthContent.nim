const unAuthContent* = """
#? stdtmpl | standard
#proc unAuthContent*(): string =                   
#  result = ""
<!DOCTYPE HTML>
<html>
  <head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width,initial-scale=1.0'>
    <title>401</title>
    <script src="https://kit.fontawesome.com/a30ba13df5.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Mono|Roboto+Slab&display=swap" rel="stylesheet">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/gh/thebigbaron/lime@v1.0.0/dist/lime/lime.min.css'>
  </head>
  <body>
    <style type="text/css">
      .errors {
        text-align:center;
        margin-top:5em;
        font-family:'Roboto Mono', monospace;
        font-size:2em;
      }

      h1 {
        font-weight: bold;
        font-size:3em;
      }

      a {
        color:black;
      }

      a:hover {
        color:#f61600;
      }

    </style>
    <div class="errors">
      <img src="https://user-images.githubusercontent.com/22755228/67323378-0ea30e80-f51b-11e9-881c-3aa84e36ed9d.png" alt="400" width="200">
      <h1> 401 </h1>
      <p>OOPS! You are <span>UNAUTHORIZED</span></p>
      <p><small>Go Back to <a href="/">Home Page</a></small></p>


    </div>

  </body>
</html>"""