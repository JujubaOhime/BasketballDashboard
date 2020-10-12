$( document ).ready(function(){

    $input = $('*[data-behavior="autocompleteTeam"]')
  
    var options = {
      url: function(phrase) {
        return "/teams/search.json?q=" + phrase;
      },
      getValue: "name",
    };
  
    $input.easyAutocomplete(options);
  
  });