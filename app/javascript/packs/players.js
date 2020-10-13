function setup_autocomplete(input_autocomplete, hidden_field){
  

  var options = { 
    url: function(phrase) {
      return "/players/search.json?q=" + phrase;
    },
    getValue: "name",
    list: {

      onSelectItemEvent: function() {
        var value = $(input_autocomplete).getSelectedItemData().id;
        
        $(hidden_field).val(value);
      }
    }};



    $(input_autocomplete).easyAutocomplete(options);
}

$( document ).ready(function(){
  

  setup_autocomplete('#first_player', '#hidden_first_player')
  setup_autocomplete('#second_player', '#hidden_second_player')
    
  $input = $('#search_player')

  var options = {
    url: function(phrase) {
      return "/players/search.json?q=" + phrase;
    },
    getValue: "name",
  };

  $input.easyAutocomplete(options);  

});
