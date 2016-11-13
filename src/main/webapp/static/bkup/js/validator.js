
window.onLoad = function() { calcOffset(); };
function calcOffset() {
    var serverTime = getCookie('serverTime');
    serverTime = serverTime==null ? null : Math.abs(serverTime);
    var clientTimeOffset = (new Date()).getTime() - serverTime;
    setCookie('clientTimeOffset', clientTimeOffset);
}
function checkSession() {
    var sessionExpiry = Math.abs(getCookie('sessionExpiry'));
    var timeOffset = Math.abs(getCookie('clientTimeOffset'));
    var localTime = (new Date()).getTime();
    if (localTime - timeOffset > (sessionExpiry+15000)) { // 15 extra seconds to make sure
        window.close();
    } else {
        setTimeout('checkSession()', 10000);
    }
}
function validateSubmit(p)
{
    var r = false;
    if (p == "up")
    {
        r = confirm("Sure you have made necessary corrections?");
    }
    else if (p == "search")
    {
        
        r = confirm("Done with your Filtering?");
    }
    if (r == true)
    {
        document.frm.submit();
        return true;
    }
    else
    {
        return false;
    }
}
function enableOpt(dv)
{
    if (dv == "NEW")
    {
        document.getElementById("new").style.display = "block";
        document.getElementById("update").style.display = "none";
        document.getElementById("btn").value = "SUBMIT";
        document.getElementById("newstatus").value = "NEW";


    }
    else if (dv == "UPDATE")
    {
        document.getElementById("new").style.display = "none";
        document.getElementById("update").style.display = "block";
        document.getElementById("btn").value = "UPDATE";
        document.getElementById("newstatus").value = "UPDATE";

    }
}

function getAutocompleterValue() {
    uservalue = dojo.widget.byId('useridd');
    try {
        if (uservalue.comboBoxSelectionValue.value != null) {
            userkey = uservalue.comboBoxSelectionValue.value;
        } else {
            userkey = '';
        }
        alert(userkey);
        document.getElementById('userid').value = userkey;

    } catch (err) {
        alert(err);
    }
    
}

function submitPage()
{
    
     uservalue = dojo.widget.byId('useridd');
    try {
        if (uservalue.comboBoxSelectionValue.value != null) {
            userkey = uservalue.comboBoxSelectionValue.value;
        } else {
            userkey = '';
        }
        //alert(userkey);
        document.getElementById('userid').value = userkey;

    } catch (err) {
        alert(err);
    }
      var r = false;
       r = confirm("Confirm Operation");
     if (r == true)
    {
        document.frm.submit();
        return true;
    }
    else
    {
        return false;
    }
}
         function checkAll()
{
    
     var checkboxes = document.getElementsByTagName('input'), val = null;    
     for (var i = 0; i < checkboxes.length; i++)
     {
         if (checkboxes[i].type == 'checkbox')
         {
             if (val === null) val = checkboxes[i].checked;
             checkboxes[i].checked = val;
         }
     }
 }
 
  function massSubmit()
{
    alert("Mass submmit");
   var passedparam=document.forms["frm"]["receiveordelete"].value;
   
   alert(passedparam);
    var r = false;
           r = confirm("Submitting this page means you are "+passedparam+" all the checked cards...continue?");
     if (r == true)
    {
	document.frm.action='massupdate.action';
        document.frm.submit();
        return true;
    }
    else
    {
        return false;
    }
}



	 
