function fn_goLinkToErpContent(link){
	var content = $("#smartErpContent");
	$.ajax({						
		type: 'GET',						
		url : getContextPath()+link,						
		dataType: "html",						
		success: function(data){
			content.empty();
			content.append(data);	
		}					
	});		
};
function getContextPath() {
	  var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	  return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
};