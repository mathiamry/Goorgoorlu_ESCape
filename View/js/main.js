/***************************************************************************/
/********** GJS :contains js scripts for the main pages and annexes ********/
/***************************************************************************/
idGet = function(id)
  {
     return document.getElementById(id);
  }

clGet = function(aClass)
  {
     return document.getElementsByClassName(aClass)[0];
  }


/////////////////////////////////////////////////////


window.addEventListener("load", function()

   {


        var windH = window.innerHeight;


        var splbox = clGet('splashbox');

        splbox.style.height = windH+"px";




});