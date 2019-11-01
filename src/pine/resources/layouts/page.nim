const pageNimf* = """
#? stdtmpl | standard
#proc pageLayout*(title, pageTitle, base, links, body, url, social, footer: string): string =                   
#  result = ""
$base
<header>
  <input id="hamburger" class="hamburger" type="checkbox" />
  <label class="hamburger" for="hamburger">
		  <i></i>
		  </label>
  <div class="menu-right">
    <ul>
      <li class="top_section">
        <img src="https://user-images.githubusercontent.com/22755228/67323378-0ea30e80-f51b-11e9-881c-3aa84e36ed9d.png" width="100">
        <p>$title</p>
      </li>
      <li>
        <ul>
          $links
        </ul>
      </li>
      <li>
        <ul>
          $social
        </ul>
      </li>
    </ul>
  </div>
</header>
<div class="nav">
  <a href="$url"><img src="https://user-images.githubusercontent.com/22755228/67323378-0ea30e80-f51b-11e9-881c-3aa84e36ed9d.png"></a>
  <a href="$url">$title</a>
</div>
<div class="page">
  <h1 class="page-title">$pageTitle</h1> $body
</div>
  $footer
</body"""
