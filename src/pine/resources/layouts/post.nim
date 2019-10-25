const postNimf* = """
#? stdtmpl | standard
#proc postLayout*(title, logo,  base, links, date, body, url, link, disqus, footer: string): string =                   
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
        <p>$logo</p>
      </li>
      <li>
        <ul>
          $links
        </ul>
      </li>
      <li>
        <ul>
          <li><a href="#"><i class="fab fa-github"></i> Github</a></li>
          <li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
          <li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
        </ul>
      </li>
    </ul>
  </div>
</header>

<div class="nav">
  <a href="/"><img src="https://user-images.githubusercontent.com/22755228/67323378-0ea30e80-f51b-11e9-881c-3aa84e36ed9d.png"></a>
  <a href="/">$logo</a>
</div>
<div class="post">
  <article class="post_ext">
    <p class="type_date">$date</p>
    <h1 class="type_title">$title</h1>
    <div class="content">
      $body
    </div>
    <a href="/" class="read_more"><button class="read_more_button">Back to Home <span>&rsaquo;</span></button> </a>
    <a href="https://www.facebook.com/sharer/sharer.php?u=$url/posts/$link">
	  <button class="facebook_button"><i class="fab fa-facebook-square"></i> Share</button>
	  </a>
    <a href="https://twitter.com/home?status=$url/posts/$link">
	  <button class="twitter_button"><i class="fab fa-twitter"></i> Tweet</button>
	  </a>
  </article>
</div>
<div id="disqus_thread"></div>
<script>
  /**
   *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
   *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
  /*
  var disqus_config = function () {
  this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
  this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
  };
  */
  (function() { // DON'T EDIT BELOW THIS LINE
    var d = document,
      s = d.createElement('script');
    s.src = 'https://$disqus/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
  })();
</script>
$footer
</body>"""

# Here will must pass in title param the title of each post