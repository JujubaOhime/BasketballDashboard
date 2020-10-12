$( document ).ready(function(){

    $input = $('*[data-behavior="autocompletePlayers"]')
  
    var options = {
      url: function(phrase) {
        return "/players/search.json?q=" + phrase;
      },
      getValue: "name",
    };
  
    $input.easyAutocomplete(options);
  
  });