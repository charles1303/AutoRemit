/**
 * 
 */
var Payer = {
	
};

$(document).ready(function () {
   $("#payerType1").unbind().click(function(event){
	   $("#ind_payer").show();
	   $("#ind_corp").hide();
    });
   $("#payerType2").unbind().click(function(event){
	   $("#ind_payer").hide();
	   $("#ind_corp").show();
    });
});
