const baseNimf* = """
#? stdtmpl | standard
#proc baseLayout*(title, metaDesc, metaKey, metaAuth, gaCode: string): string =                   
#  result = ""
<!DOCTYPE HTML>
<html>
<head>
  <meta charset='utf-8'>
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <meta name='viewport' content='width=device-width,initial-scale=1.0'>
  <title>$title</title>
  <meta name='description' content='$metaDesc'>
  <meta name='keywords' content='$metaKey'>
  <meta name='author' content='$metaAuth'>
  <script src="https://kit.fontawesome.com/a30ba13df5.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css?family=Roboto+Mono|Roboto+Slab&display=swap" rel="stylesheet">
  <link rel='stylesheet' href='https://cdn.jsdelivr.net/gh/thebigbaron/lime@v1.0.0/dist/lime/lime.min.css'>
  <link rel='stylesheet' href='../assets/css/style.css' type='text/css'>
  <script src="../assets/js/main.js" type="text/javascript"></script>
  <script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', '{{ config.$gaCode }}']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script');
      ga.type = 'text/javascript';
      ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0];
      s.parentNode.insertBefore(ga, s);
    })();
  </script>
</head>
<body>"""
