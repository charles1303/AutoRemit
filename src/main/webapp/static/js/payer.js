/**
 * 
 */
var Payer = {
	
};

$(document).ready(function () {
	
	if($('input[name=payerType]:checked').val() == 'I'){
		$("#ind_payer").show();
		$("#ind_corp").hide();
	}else if($('input[name=payerType]:checked').val() == 'C'){
		$("#ind_payer").hide();
		$("#ind_corp").show();
	}else{
		$("#ind_payer").hide();
		$("#ind_corp").hide();
	}
	
   $("#payerType1").unbind().click(function(event){
	   $("#ind_payer").show();
	   $("#ind_corp").hide();
    });
   $("#payerType2").unbind().click(function(event){
	   $("#ind_payer").hide();
	   $("#ind_corp").show();
    });
   
});

