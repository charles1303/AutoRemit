/**
 * 
 */
var TellerForm = {
		 Url: {
		        baseUrl: '/autoremit',
		        searchPayers: '/autocomp/searchPayers',
		        searchAgency: '/autocomp/searchAgency',
		        searchRevItems: '/agency/searchRevItems'

		    },
		minLength: 2
}

$(document).ready(function () {
	 
	    $("#payers").autocomplete({
	        source: function(request, response){
	            $.get(TellerForm.Url.baseUrl+TellerForm.Url.searchPayers, {
	                term:request.term
	                }, function(data){
	                response($.map(data, function(item) {
	                    return {
	                        label: item.pin,
	                        value: item.id
	                    }
	                }))
	            }, "json");
	        },
		select: function(event, ui) {
	        event.preventDefault();
	        $("#payers").val(ui.item.label);
	        $("#payerId").val(ui.item.value);
	        $("#ind_payer").show();
	    },
	    focus: function(event, ui) {
	        event.preventDefault();
	        $("#payers").val(ui.item.label);
	    },
	        minLength: TellerForm.minLength,
	        dataType: "json",
	        cache: false
	    });
	    
	    $("#agency").autocomplete({
	        source: function(request, response){
	            $.get(TellerForm.Url.baseUrl+TellerForm.Url.searchAgency, {
	                term:request.term
	                }, function(data){
	                response($.map(data, function(item) {
	                    return {
	                        label: item.pin,
	                        value: item.id
	                    }
	                }))
	            }, "json");
	        },
		select: function(event, ui) {
	        event.preventDefault();
	        $("#agency").val(ui.item.label);
	        $("#agencyId").val(ui.item.value);
	    },
	    focus: function(event, ui) {
	        event.preventDefault();
	        $("#agency").val(ui.item.label);
	    },
	        minLength: TellerForm.minLength,
	        dataType: "json",
	        cache: false
	    });
	    
	    $("#revItem").autocomplete({
	        source: function(request, response){
	            $.get(TellerForm.Url.baseUrl+TellerForm.Url.searchRevItems, {
	                term:request.term
	                }, function(data){
	                response($.map(data, function(item) {
	                    return {
	                        label: item.pin,
	                        value: item.id
	                    }
	                }))
	            }, "json");
	        },
		select: function(event, ui) {
	        event.preventDefault();
	        $("#revItem").val(ui.item.label);
	        $("#revItemId").val(ui.item.value);
	    },
	    focus: function(event, ui) {
	        event.preventDefault();
	        $("#revItem").val(ui.item.label);
	    },
	        minLength: TellerForm.minLength,
	        dataType: "json",
	        cache: false
	    });
	  
});