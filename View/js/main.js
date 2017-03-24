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
        if (typeof splbox !== 'undefined') 
        {
        
          splbox.style.height = windH+"px";

        }


        var boxinner = clGet('boxinner');
        var boxheader = clGet('boxheader');
 
        var bheaderH = 0;
        if (typeof boxheader !== 'undefined') 
        {
          bheaderH = boxheader.offsetHeight; 
        }  


        if (typeof boxinner !== 'undefined') 
        {
        
          boxinner.style.height = (windH-bheaderH)+'px';
        }


        var container = clGet('container');
        var container2 = clGet('container2');
        var container3 = clGet('container3');



        if (typeof container !== 'undefined') 
        {
          container.style.height = (windH-(bheaderH+100))+'px';
        }

        if (typeof container2 !== 'undefined') 
        {
          container2.style.height = (windH-(bheaderH+150))+'px';
        }

       if (typeof container3 !== 'undefined') 
        {
          container3.style.height = (windH-(bheaderH+180))+'px';
        }


});