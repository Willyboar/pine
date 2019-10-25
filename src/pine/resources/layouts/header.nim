const headerNimf* = """
#? stdtmpl | standard
#proc headerLayout*(title, links: string): string =                   
#  result = ""
<header>
  <input id="hamburger" class="hamburger" type="checkbox" />
  <label class="hamburger" for="hamburger">
		  <i></i>
		  </label>
  <div class="menu-right">
    <ul>
      <li class="top_section">
        <img src="https://user-images.githubusercontent.com/22755228/67323378-0ea30e80-f51b-11e9-881c-3aa84e36ed9d.png" width="100">
        <p>Author</p>
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
"""

