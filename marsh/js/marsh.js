
          /********************		DELVE JAVASCRIPT		********************/



/***********************************************************************************************************

				 THE IMAGELOADER
	
************************************************************************************************************/
function preLoadImages(){
	
	/*For the preLoading of images to take place, this function must be called in the onLoad handler caller
	in the body tag of the page. Images that are to be swapped must have a capital 'H' on the end and the original
	image should have a capital 'N' on the end*/
	
	
 	imageArray = new Array();
 	
	
	
	/*****************************************************************/
 	
	/*If there are any extra Images that cannot be detected they should be 
	placed in a array called ExtraImages which the following script will detect*/
	
	
	var URLstring = document.location.toString();
	
	n = URLstring.length;
	while(URLstring.charAt(n)!="/"){
		
			n--;}
		
			var preFix = URLstring.slice(0,n);
			
	
	
	
		
	if(typeof(ExtraImages)=="object"){
		eX = new Array();
		
		for(i=0;i<ExtraImages.length;i++){
			extra_image = new Image();
			eX[i] = extra_image;
			
			var extra_string = preFix+ExtraImages[i];
			
			eX[i].src=extra_string;
			
		}}
		
		
	/*****************************************************************/	
		
	
	/*The following script finds all images with 'H' or 'N' as the last letter and preLoads the 
	image with the opposite letter on the end*/
	for(i=0;i<document.images.length;i++){
		
	
		var an_image = new Image();
		imageArray[i]= an_image;
		an_image_string = document.images[i].src;
		
		
		var theString =an_image_string.toString();
		
		var last= theString.lastIndexOf(".");
		
		if (theString.charAt(last-1) == "N"||theString.charAt(last-1) == "n"){
			
			var suffix = theString.slice(last,theString.length);
			var newString = theString.slice(0,last-1)+"H"+suffix;
			imageArray[i].src= newString;
			
			
		}
		
		if (theString.charAt(last-1) == "H"||theString.charAt(last-1) == "h"){
			
			var suffix = theString.slice(last,theString.length);
			var newString = theString.slice(0,last-1)+"N"+suffix;
			imageArray[i].src= newString;
			
			
			
		}
		
		
	}
	
	
}
/***********************************************************************************************************

				 THE IMAGESWAPPER
	
************************************************************************************************************/
function imgswap(pic,imageName){
	
	/*This function takes image names that have "N" for normal or "H" for highlighted as the last
	letter in the image name and also a suffix (".gif" etc) must be present also 
	All images must be in a folder named "media" unless otherwise explicitly stated in all references
	to the image within the HTML page.
	If the image rolled over changed a different image than itself on the same page then add the name of 
	the swapped image as the second parameter (imageName) otherwise leave it blank*/
	

	if (pic.indexOf("media")==-1){
			
			pic = "media/"+pic;
			}
			
	var suffix = pic.slice(pic.length-4,pic.length);
	
  	var picstartpos = pic.indexOf("media/");
	var picname = pic.substring(picstartpos+6,pic.length-5);
	
	
	
	if(typeof(imageName)!="undefined"){
		picname=imageName;}
	
  	if(document.all){
  	
  	
  	
			document.all(picname).src=pic;
  	}
  
  
  	if(document.layers){
  
  	var theString = document.images[picname].src;
  	
  	/*This finds the second to last delimiter to obtain the whole image address for Netscape
  	or just gives it the ../name string which appears to work*/
  	
  	
  	if(pic.charAt(0)=="."){
  		
  	document.images[picname].src=pic;}
  	else{
  	var lastPos = (theString.slice(0,theString.lastIndexOf("/")-1).lastIndexOf("/")+1);
 	document.images[picname].src=theString.slice(0,lastPos)+(pic);
 	}
   
  }
}

/***********************************************************************************************************

				 	OPEN POPUP WINDOW
	
************************************************************************************************************/
// page=*.asp or *.html to open
// h,w,t,l = height,width,top,left
// rs = resizable scrollbars
function openpopup(page,pagename,h,w,t,l,rs,sbs) { 
	
  w = window.open(page, pagename, "height="+h+",width="+w+",top="+t+",left="+l+",resizable="+rs+",scrollbars="+sbs);
  w.focus();
}



function chooseStyle2(styleroot){
	
	//This function is called on loading every page 
	//for the purposes of referencing a style sheet.
	if(document.all){
		document.write('<'+'link rel="stylesheet" href="' + styleroot + 'explorer.css" />');
	}
	if(document.layers){
		//alert('<'+'link rel="stylesheet" href="' + styleroot + 'netscape.css" />');
		document.write('<'+'link rel="stylesheet" href="' + styleroot + 'netscape.css" />');
	}
}

/***********************************************************************************************************

				 		MENUS
	
************************************************************************************************************/



//set up a few vars for the menu for netscape...

var overLaps		= new Array();
overLaps=['first','third'];/*PLACE ALL MENUS THAT HAVE DROPDOWNS THAT WOULD OVERLAP WITH OTHER DROPDOWNS*/
var lastHead		= "";
var xposoffirst 	= 100;/*PLACE THE TOP LEFT XPOS OF THE MENUS. THIS SHOULD BE THE SAME AS IN THE CCS*/
var yposoffirst 	= 50;/*PLACE THE TOP LEFT YPOS OF THE MENUS. THIS SHOULD BE THE SAME AS IN THE CCS*/
var noofmenus 		= 4;/*PLACE IN THE NUMBER OF MENUS THAT YOU HAVE IN THE HTML PAGE*/
var virtualWidth	= new Array();
virtualWidth[0]		= 100;/*ALL THESE WIDTHS SHOULD BE THE WIDTHS OF THE TITLES OF THE MENU*/
virtualWidth[1]		= 100;
virtualWidth[2]		= 100;
virtualWidth[3]		= 100;
var width 		= new Array();
width[0] 		= 130;/*ALL THESE WIDTHS SHOULD BE THE WIDTHS OF THE DROPDOWNS*/
width[1] 		= 100;
width[2] 		= 120;
width[3] 		= 100;
var smallheight 	= 20;
var height 		= new Array();
height[0] 		= 80; /*ALL THESE HEIGHTS SHOULD BE THE WIDTHS OF THE DROPDOWNS*/
height[1] 		= 80;
height[2] 		= 80;
height[3] 		= 80;
var menuid 		= new Array();  //maybe not necessary
menuid[0] 		= 'first';/*ENTER THE MENU NAMES*/
menuid[1] 		= 'second';
menuid[2] 		= 'third';
menuid[3] 		= 'fourth';
var onoff	   	= new Array();

if(document.layers){
	document.captureEvents(Event.MOUSEMOVE);  
}

function DoIt(myevent){
	
				
	var menuno=0;
	var startpoint;
	var endpoint=xposoffirst;
	startpoint=xposoffirst;
	while(menuno < noofmenus){
	
	/*The following conditional asks first is the mouse is below the menu titles 
	and second which was the last title rolled over for overlap reasons*/
	window.status =lastHead;
	var ul = 0;
	for(i=0;i<overLaps.length;i++){
		
		if(lastHead==overLaps[i]){
			ul = 1;}}
			
	if(myevent.pageY<(smallheight+yposoffirst)||!ul){
		
		endpoint=endpoint+virtualWidth[menuno];}else{
		
		endpoint=endpoint+width[menuno];}
		
	
		
		if(onoff[menuno]!='on'){
		if(myevent.pageX > startpoint && myevent.pageX <= endpoint && 
		  myevent.pageY > yposoffirst && myevent.pageY < yposoffirst+smallheight){ 	
				document.layers[menuid[menuno]].resizeTo(width[menuno],height[menuno]);
				onoff[menuno]='on';
				
				
				
				
		}else{
		   document.layers[menuid[menuno]].resizeTo(width[menuno], smallheight);
		   onoff[menuno]='off';
		}
		}
		
		if(onoff[menuno]=='on'){
		if(myevent.pageX > startpoint && myevent.pageX <= endpoint && 
		  myevent.pageY > yposoffirst && myevent.pageY < yposoffirst+height[menuno]){ 	
				document.layers[menuid[menuno]].resizeTo(width[menuno],height[menuno]);
				onoff[menuno]='on';	
		}else{
		   document.layers[menuid[menuno]].resizeTo(width[menuno], smallheight);
		   onoff[menuno]='off';
		}
		}
		
		
		startpoint=endpoint;
		menuno++;
	}
}	


if(document.layers){
	document.onmousemove=DoIt; //specifies what function to do when the mouse moves 
	
}

	

function fallopen(s,n,w){


	if(document.all){
	
		document.all(s).style.height = n;
		
		document.all(s).style.width = w;
	}
}

function fallclose(s,n){
	
		if(document.all){	
			document.all(s).style.height = n;
			
		}
}



function tester(){
	alert("!!Empty Link!!");
	
}

function swapimage(theLayer,theName,thePic,theId){
	/*This the second imageswapper in this file and is used only with menus*/
	if(document.all){
		document.all(theName).src=thePic;
		
	}else{
	
		document.layers[theLayer].document.images[theName].src=thePic;
		
		lastHead = theLayer;
		
		
	}
}



/**********************************************************************************************************
***********************************************************************************************************/



/********************************************************************/

/*               Data Validation functions               */

/********************************************************************
For the integer check you must add an element called data and apply data as
its value. Only inputs that are checked are mandatory=true.

For the date to be checked the data field must be named date and must also be 
mandatory=true.

validateValues(thisForm) uses both methods. thisForm takes the name of the form
being validated.
<input type=text name=dataType  data=integer mandatory=true>
***/

function validateDate(thisForm){
	
for(var i = 0;i<thisForm.length;i++){
	
	var e = thisForm.elements[i];
	
 if (e.data=='date'){
//If the field is mandatory
	if (thisForm.date.mandatory) {
		
	var err=0
	
	a=e.date.value
	if (a.length != 10) err=1
	b = a.substring(0, 2)// month
	c = a.substring(2, 3)// '/'
	d = a.substring(3, 5)// day
	e = a.substring(5, 6)// '/'
	f = a.substring(8, 10)// year 
        s = a.substring(6,8)//CENTURY
	//basic error checking
	
	
	if (!((s==19)||(s==20))) err =1
	if (b<1 || b>12) err = 1
	if (c != '/') err = 1
	if (d<1 || d>31) err = 1
	if (e != '/') err = 1
	if (f<0 || f>99) err = 1
	
	//advanced error checking

	// months with 30 days
	if (b==4 || b==6 || b==9 || b==11){
		if (d==31) err=1
	}

	// february, leap year
	if (b==2){
		// feb
		var g=parseInt(f/4)
		if (isNaN(g)) {
			err=1
		}

		if (d>29) err=1
		if (d==29 && ((f/4)!=parseInt(f/4))) err=1
	}

	if (err==1){
		alert('Please correct your date!');
	}
	else{
		alert('Date Correct');
	}
}

	}}

}


function validateInput(thisForm){
var e = thisForm.length;

for(var i = 0;i<thisForm.length;i++){

var e = thisForm.elements[i];

/***********  Check that the fields hold appropriate data types ********/
if(((e.type == "text")||(e.type=="textarea")) && (e.mandatory)){

	if((e.value==null)||(e.value=="")){
		alert("Please insure all mandatory fields have the appropriate value.");
		break;
		}
	
	
	
	if(e.data == "integer"){
	
	var int = parseInt(e.value);
	
		if(isNaN(int)){
			alert("Incorrect data type");
		}
	}
		
	
	}}

}

function validateValues(thisForm){
	validateInput(thisForm);
	validateDate(thisForm);}
	
//------


		function saveform1(){
			document.myForm.next.value="Stage1";
			document.myForm.submit();
		}
		function saveform2(){
			document.myForm.next.value="Stage2";
			document.myForm.submit();
		}
		function saveform3(){
			document.myForm.next.value="Stage3";
			document.myForm.submit();
		}
		function admin1(){
			document.myForm.action.value="nothing";
			document.myForm.next.value="Stage1";
			document.myForm.submit();
		}
		function admin2(){
			document.myForm.action.value="nothing";
			document.myForm.next.value="Stage2";
			document.myForm.submit();
		}
		function admin3(){
			document.myForm.action.value="nothing";
			document.myForm.next.value="Stage3";
			document.myForm.submit();
		}
		function adminall(){
			document.myForm.action.value="nothing";
			document.myForm.next.value="Stageall";
			document.myForm.submit();
		}
		function hr(){
			document.myForm.action.value="nothing";
			document.myForm.next.value="HR";
			document.myForm.submit();
		}
		
		function nextstage1(){
			document.myForm.next.value="Stage2";
			if(document.myForm.Surname.value==""){ alert("Please fill in your Surname");document.myForm.Surname.focus(); return false;
			}else if(document.myForm.Forenames.value==""){ alert("Please fill in your forename(s)");document.myForm.Forenames.focus(); return false;
			}else if(!document.myForm.Title[0].checked && !document.myForm.Title[1].checked &&
								!document.myForm.Title[2].checked && !document.myForm.Title[3].checked){ 
								alert("Please select your title"); document.myForm.Title[0].focus();
								return false;
			}else if(!isDate(document.myForm.DOB.value)){ alert("Please fill a valid date of birth");document.myForm.DOB.focus(); return false;
			}else if(!document.myForm.Gender[0].checked && !document.myForm.Gender[1].checked){ alert("Please select your gender");document.myForm.Gender[0].focus(); return false;
			}else if(document.myForm.Nationality.value==""){ alert("Please fill in your Nationality");document.myForm.Nationality.focus(); return false;
			}else if(document.myForm.HomeAddr1.value==""){ alert("Please fill in your Home Address");document.myForm.HomeAddr1.focus(); return false;
			//}else if(!isDate(document.myForm.HomeDateFrom.value)){ alert("Please fill a valid from date with regard to home"); return false;
			//}else if(!isDate(document.myForm.HomeDateTo.value)){ alert("Please fill a valid to date with regard to home"); return false;
			}else if(document.myForm.HomePhone.value==""){ alert("Please fill in your Home Phone Number");document.myForm.HomePhone.focus(); return false;
			//}else if(document.myForm.MobilePhone.value==""){ alert("Please fill in your Mobile phone number");document.myForm.MobilePhone.focus(); return false;
			}else if(document.myForm.Email.value==""){ alert("Please fill in your Email address");document.myForm.Email.focus(); return false;
			}else if(!document.myForm.ReqWorkPermit[0].checked && !document.myForm.ReqWorkPermit[1].checked){ alert("Please specify if you require a work permit");document.myForm.ReqWorkPermit[0].focus(); return false;
			}else if(!document.myForm.LiveWorkUK[0].checked && !document.myForm.LiveWorkUK[1].checked){ alert("Please specify if you are able to live and work in the UK");document.myForm.LiveWorkUK[0].focus(); return false;
			}else if(document.myForm.DegreeSubject.value==""){ alert("Please fill in your Degree Subject");document.myForm.DegreeSubject.focus(); return false;
			}else if(document.myForm.DegreeOtherStartDate.value!="" && !isDate(document.myForm.DegreeOtherStartDate.value)){ alert("Please fill a valid degree start date");document.myForm.DegreeOtherStartDate.focus(); return false;
			}else if(document.myForm.DegreeOtherEndDate.value!="" && !isDate(document.myForm.DegreeOtherEndDate.value)){ alert("Please fill a valid degree end date");document.myForm.DegreeOtherEndDate.focus(); return false;
			}else if(document.myForm.alevelyear1.value!="" && isNaN(document.myForm.alevelyear1.value)){ alert("Please enter a valid year for alevels");document.myForm.alevelyear1.focus(); return false;
			}else if(document.myForm.alevelyear2.value!="" && isNaN(document.myForm.alevelyear2.value)){ alert("Please enter a valid year for alevels");document.myForm.alevelyear2.focus(); return false;
			}else if(document.myForm.alevelyear3.value!="" && isNaN(document.myForm.alevelyear3.value)){ alert("Please enter a valid year for alevels");document.myForm.alevelyear3.focus(); return false;
			}else if(document.myForm.alevelyear4.value!="" && isNaN(document.myForm.alevelyear4.value)){ alert("Please enter a valid year for alevels");document.myForm.alevelyear4.focus(); return false;
			}else if(document.myForm.qualyear1.value!="" && isNaN(document.myForm.qualyear1.value)){ alert("Please enter a valid year for qualifications");document.myForm.qualyear1.focus(); return false;
			}else if(document.myForm.qualyear2.value!="" && isNaN(document.myForm.qualyear2.value)){ alert("Please enter a valid year for qualifications");document.myForm.qualyear2.focus(); return false;
			}else if(document.myForm.qualyear3.value!="" && isNaN(document.myForm.qualyear3.value)){ alert("Please enter a valid year for qualifications");document.myForm.qualyear3.focus(); return false;
			}else if(document.myForm.qualyear4.value!="" && isNaN(document.myForm.qualyear4.value)){ alert("Please enter a valid year for qualifications");document.myForm.qualyear4.focus(); return false;
			}else if(document.myForm.EthnicOriginID.selectedIndex==0){ alert("Please select your ethnic origin");document.myForm.EthnicOriginID.focus(); return false;
			}else if(document.myForm.UniID.selectedIndex==0){ alert("Please select a university");document.myForm.UniID.focus(); return false;
			}
			document.myForm.submit();
		}

		function nextstage2(){
			document.myForm.next.value="Stage3";
			if(!document.myForm.Assistance[0].checked && !document.myForm.Assistance[1].checked){ alert("Please specify if you require special assistance in order to attend an interview");document.myForm.Assistance[0].focus(); return false;
			}else if(document.myForm.Assistance[0].checked && document.myForm.AssistanceDetails.value==""){ alert("Please tell us the assistance you require");document.myForm.AssistanceDetails.focus(); return false;
			}else if(!document.myForm.Conviction[0].checked && !document.myForm.Conviction[1].checked){ alert("Please specify if you have a conviction or not");document.myForm.Conviction[0].focus(); return false;
			}else if(document.myForm.Conviction[0].checked && document.myForm.ConvictionDetails.value==""){ alert("Please tell us about your conviction");document.myForm.ConvictionDetails.focus(); return false;
			}else if(document.myForm.workedfrom1.value!="" && !isDate(document.myForm.workedfrom1.value)){ alert("Please enter a valid date for your work experience start date");document.myForm.workedfrom1.focus(); return false;
			}else if(document.myForm.workedto1.value!="" && !isDate(document.myForm.workedto1.value)){ alert("Please enter a valid date for your work experience end date");document.myForm.workedto1.focus(); return false;
			}else if(document.myForm.workedfrom2.value!="" && !isDate(document.myForm.workedfrom2.value)){ alert("Please enter a valid date for your work experience start date");document.myForm.workedfrom2.focus(); return false;
			}else if(document.myForm.workedto2.value!="" && !isDate(document.myForm.workedto2.value)){ alert("Please enter a valid date for your work experience end date");document.myForm.workedto2.focus(); return false;
			}else if(document.myForm.workedfrom3.value!="" && !isDate(document.myForm.workedfrom3.value)){ alert("Please enter a valid date for your work experience start date");document.myForm.workedfrom3.focus(); return false;
			}else if(document.myForm.workedto3.value!="" && !isDate(document.myForm.workedto3.value)){ alert("Please enter a valid date for your work experience end date");document.myForm.workedto3.focus(); return false;
			}else if(document.myForm.workedfrom4.value!="" && !isDate(document.myForm.workedfrom4.value)){ alert("Please enter a valid date for your work experience start date");document.myForm.workedfrom4.focus(); return false;
			}else if(document.myForm.workedto4.value!="" && !isDate(document.myForm.workedto4.value)){ alert("Please enter a valid date for your work experience end date");document.myForm.workedto4.focus(); return false;
			}else if(document.myForm.workbenefit.value==""){ alert("Please tell us how you feel you have benefited from your work experience");document.myForm.workbenefit.focus(); return false;
			}else if(document.myForm.workbenefit.value.length>4000){ alert("Please limit your Personal Qualities details to 4000 characters per field.");document.myForm.workbenefit.focus(); return false;
			}else if(document.myForm.careerobj.value==""){ alert("Please tell us why you want to join Marsh");document.myForm.careerobj.focus(); return false;
			}else if(document.myForm.careerobj.value.length>4000){ alert("Please limit your Personal Qualities details to 4000 characters per field");document.myForm.careerobj.focus(); return false;
			}else if(document.myForm.leaderex.value==""){ alert("Please fill in all the fields under the heading \'Personal Qualities\'");document.myForm.leaderex.focus(); return false;
			}else if(document.myForm.leaderex.value.length>4000){ alert("Please limit your Personal Qualities details to 4000 characters per field");document.myForm.leaderex.focus(); return false;
			}else if(document.myForm.teamex.value==""){ alert("Please fill in all the fields under the heading \'Personal Qualities\'");document.myForm.teamex.focus(); return false;
			}else if(document.myForm.teamex.value.length>4000){ alert("Please limit your Personal Qualities details to 4000 characters per field");document.myForm.teamex.focus(); return false;
			}else if(document.myForm.lateralex.value==""){ alert("Please fill in all the fields under the heading \'Personal Qualities\'");document.myForm.lateralex.focus(); return false;
			}else if(document.myForm.lateralex.value.length>4000){ alert("Please limit your Personal Qualities details to 4000 characters per field");document.myForm.lateralex.focus(); return false;
			}else if(document.myForm.investigativeex.value==""){ alert("Please fill in all the fields under the heading \'Personal Qualities\'");document.myForm.investigativeex.focus(); return false;
			}else if(document.myForm.investigativeex.value.length>4000){ alert("Please limit your Personal Qualities details to 4000 characters per field");document.myForm.investigativeex.focus(); return false;
			}else if(document.myForm.hobbies.value==""){ alert("Please fill in all the fields under the heading \'Personal Qualities\'");document.myForm.hobbies.focus(); return false;
			}else if(document.myForm.hobbies.value.length>4000){ alert("Please limit your Personal Qualities details to 4000 characters per field");document.myForm.hobbies.focus(); return false;
			}else if(document.myForm.addinfo.value==""){ alert("Please fill in some additional information to help support your application");document.myForm.addinfo.focus(); return false;
			}else if(document.myForm.addinfo.value.length>4000){ alert("Please limit your Personal Qualities details to 4000 characters per field");document.myForm.addinfo.focus(); return false;
			}
			document.myForm.submit();
		}
		function nextstage3(){
			document.myForm.next.value="confirm";
			if(!document.myForm.pastillness[0].checked && !document.myForm.pastillness[1].checked){ alert("Please specify whether you have suffered illness or injury involving 3 week or more absence");document.myForm.pastillness[0].focus(); return false;
			}else if(document.myForm.pastillness[0].checked && document.myForm.pastdetails.value==""){ alert("Please tell us about the details of your past illness/injury");document.myForm.pastdetails.focus(); return false;
			}else if(!document.myForm.currentillness[0].checked && !document.myForm.currentillness[1].checked){ alert("Please specify whether you are currently receiving medical treatment");document.myForm.currentillness[0].focus(); return false;
			}else if(document.myForm.currentillness[0].checked && document.myForm.currentdetails.value==""){ alert("Please tell the nature and any adjustments required");document.myForm.currentdetails.focus(); return false;
			}else if(document.myForm.absencedetails.value==""){ alert("Please give an estimate of your sickness absence in the last 12 months");document.myForm.absencedetails.focus(); return false;
			}else if(document.myForm.name.value==""){ alert("Please give us a the name of your emergency contact");document.myForm.name.focus(); return false;
			}else if(document.myForm.relation.value==""){ alert("Please specify the emergency contacts relationship to you");document.myForm.relation.focus(); return false;
			}else if(document.myForm.addr1.value==""){ alert("Please fill the emergency contacts address");document.myForm.addr1.focus(); return false;
			}else if(document.myForm.phone1.value==""){ alert("Please fill the emergency contact number");document.myForm.phone1.focus(); return false;
			}else if(document.myForm.refname1.value==""){ alert("Please fill a referee\'s name");document.myForm.refname1.focus(); return false;
			}else if(document.myForm.refname2.value==""){ alert("Please fill a referee\'s name");document.myForm.refname2.focus(); return false;
			}else if(document.myForm.occupation1.value==""){ alert("Please fill your referee\'s occupation");document.myForm.occupation1.focus(); return false;
			}else if(document.myForm.occupation2.value==""){ alert("Please fill your referee\'s occupation");document.myForm.occupation2.focus(); return false;
			}else if(document.myForm.refaddr11.value==""){ alert("Please fill your referee\'s address");document.myForm.refaddr11.focus(); return false;
			}else if(document.myForm.refaddr12.value==""){ alert("Please fill your referee\'s address");document.myForm.refaddr12.focus(); return false;
			}
			document.myForm.submit();
		}
		
		function isDate(d){
					valid=0;
					var days =new Array(31,28,31,30,31,30,31,31,30,31,30,31);
					thedate=new Array();
					thedate=d.split('/');
					dateday=parseInt(thedate[0],10);
					datemonth=parseInt(thedate[1],10);
					dateyear=thedate[2];
					if(datemonth > 0 && datemonth < 13){valid=1; }else{valid=0;return false;}
					if(dateday >0 && dateday <= days[datemonth-1]){ valid=1;}else{valid=0; return false;}
					if(dateyear > 1900 && dateyear < 2002){valid=1;}else{valid=0;return false;}
					return true;
			}