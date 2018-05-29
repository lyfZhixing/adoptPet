$("#pre").click(function(){
	var pagenum = parseInt($("#pageno").val());
	if(pagenum <= 1){
		alert("已经是第一页了！！");
	}else{
		pagenum = pagenum-1;
		window.location.href=$("#PageContext").val()+"/queryIndex/showMore.action?pagenum="+pagenum;
	}
});

$("#next").click(function(){
	var pagenum = parseInt($("#pageno").val());
	var pages = parseInt($("#pages").val());
	if(pagenum >= pages){
		alert("已经是最后一页了！！");
	}else{
		pagenum = pagenum+1;
		window.location.href=$("#PageContext").val()+"/queryIndex/showMore.action?pagenum="+pagenum;
	}
});

$("#jump").click(function(){
	var pagenum = parseInt($("#jumpno").val());
	var pages = parseInt($("#pages").val());
	if(pagenum > pages){
		pagenum = pages;
	}if(pagenum < 1){
		pagenum = 1;
	}
	window.location.href=$("#PageContext").val()+"/queryIndex/showMore.action?pagenum="+pagenum;

});

