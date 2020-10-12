$( document ).ready(function(){
    console.log( "ready!" );
    const toggleSwitch = document.querySelector('.theme-switch input[type="checkbox"]');
    const currentTheme = localStorage.getItem('theme'); 
    if (currentTheme) {
      document.documentElement.setAttribute('data-theme', currentTheme);
  
      if (currentTheme === 'dark') {
          toggleSwitch.checked = true;
      }
    }

    function switchTheme(e) {
      if (e.target.checked) {
          document.documentElement.setAttribute('data-theme', 'dark');
          localStorage.setItem('theme', 'dark'); //add this
      }
      else {
          document.documentElement.setAttribute('data-theme', 'light');
          localStorage.setItem('theme', 'light'); //add this
      }    
    }

    toggleSwitch.addEventListener('change', switchTheme, false);


    $(window).scroll(function() {
      if ($(this).scrollTop()>100)
       {
          $('#icon-scroll').fadeOut(500);
       }
      else
       {
        $('#icon-scroll').fadeIn(500);
       }
   });
   
  

});


