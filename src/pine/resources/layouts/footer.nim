const footerNimf* = """
#? stdtmpl | standard
#proc footerLayout*(title, yearNow, disqus: string): string =                   
#  result = ""
<div class="empty_section">
  <a href="#" class="to_top"><button class="to_top_button">Back to Top <i class="fas fa-arrow-up"></i></button></a>
</div>
<footer>
  <p class="footer_message">Copyright &copy; $yearNow $title . Build by <a href="https://github.com/thebigbaron">Big Baron </a>with ❤️.<br></p>
</footer>
<script id="dsq-count-scr" src="//$disqus/count.js" async></script>
"""
