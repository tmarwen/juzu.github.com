    </div><!-- /.inner -->
  </div><!-- /#wrapper /.wrapper -->
  <footer id="footer">
    <div class="inner">
      <p class="copy-right">Copyright ©2014. All rights reserved. <a href="#" title="Juzu Web Framework">Juzu</a></p>
    </div>
  </footer><!-- /#footer -->

  <!-- Juzuweb Javascript -->
  <!-- Currenly using Jquery v.1.7.1 because Jquery Address conflict with Jequery v.11.0 -->
  <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap-3.1/jquery.address-1.5.min.js"></script>
  <script type="text/javascript" src="js/bootstrap-3.1/dropdown.js"></script>
  <script type="text/javascript" src="js/bootstrap-3.1/collapse.js"></script>
  <script type="text/javascript" src="js/bootstrap-3.1/juzu.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      // The page navigation
      $.address.change(function(event){

        // Get anchor
        var anchor = event.value.substring(1);
        if (anchor == "")
        anchor = "home";

        //
        var page = $(".page:has(a[name=" + anchor + "])");
        if (page.length == 1) {
        page.filter(function() {
          return this != window.previous;
        }).each(function() {

          // Do show/hide
          $(".page").hide();
          $(this).show();

          // Reset page to top
          $(window).scrollTop(0);

          // Update previous
          window.previous = this;
        });
        } else {
        // Should log something somehow
        }
      });
    });
  </script>
  <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
              m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-1292368-1', 'exoplatform.com');
      ga('send', 'pageview');

  </script>
  </body>
</html>
