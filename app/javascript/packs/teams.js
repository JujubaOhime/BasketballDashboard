function setup_autocomplete(input_autocomplete, hidden_field){
  

  var options = { 
    url: function(phrase) {
      return "/teams/search.json?q=" + phrase;
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
  

  setup_autocomplete('#first_team', '#hidden_first_team')
  setup_autocomplete('#second_team', '#hidden_second_team')
    
  $input = $('#search_team')

  var options = {
    url: function(phrase) {
      return "/teams/search.json?q=" + phrase;
    },
    getValue: "name",
  };

  $input.easyAutocomplete(options);

});