(function() {
	'use strict';
	window.addEventListener('load', function() {
	// Fetch all the forms we want to apply custom Bootstrap validation styles to
	var forms = document.getElementsByClassName('needs-validation');
	// Loop over them and prevent submission
	var validation = Array.prototype.filter.call(forms, function(form) {
	form.addEventListener('submit', function(event) {
	if (form.checkValidity() === false) {
	event.preventDefault();
	event.stopPropagation();
	}
	form.classList.add('was-validated');
	}, false);
	});
	}, false);
	})
();
function isInt(value) {
	  return !isNaN(value) && 
	         parseInt(Number(value)) == value && 
	         !isNaN(parseInt(value, 10));
}
function fn_companySave(){
	var isValid = true;
	if ($("#comForm")[0].checkValidity() === false) {
		isValid = false;
	}
	if(isInt($("#comForm input[name=accOrder]").val())){
		$("#comForm input[name=accOrder]").next().hide();
	} else{
		$("#comForm input[name=accOrder]").next().show();
		isValid = false;
	}
	$("#comForm")[0].classList.add('was-validated');
	if(isValid == true){
		$.ajax({						
			type: 'post',						
			url : $("#comForm")[0].action,			
			data: $("#comForm").serialize(),
			dataType: "html",						
			success: function(data){
				var content = $("#smartErpContent");
				content.empty();
				content.append(data);	
			}					
		});
	}
}
function fn_companyView(){
    var companyId = $("td:nth-child(1)",$($("#datatable1").find('tr.selected')[0])).text().trim();
    if(!companyId){
    	alert("회사를 선택해주세요.");
    }
	fn_goLinkToErpContent('/dc/cm/cru.do?companyId='+companyId)	;
}
function fn_companyDelete(){
	if($("td:nth-child(1)",$($("#datatable1").find('tr.selected')[0])).text().trim()!=''){
		if(confirm("삭제하시겠습니까?")){
			$.ajax({						
				type: 'post',						
				url : getContextPath()+'/dc/cm/dProc.do?companyId='+$("td:nth-child(1)",$($("#datatable1").find('tr.selected')[0])).text().trim(),						
				dataType: "html",						
				success: function(data){
					var content = $("#smartErpContent");
					content.empty();
					content.append(data);	
				}					
			});		
		}
  		return;
	}else{
		alert('리스트에서 회사를 선택해주세요.');
  		return;
	}
}
$(document).ready(function($){

	/*
	$('#comForm').submit(function(event) {
		if (this.checkValidity() === false) {
			event.preventDefault();
			event.stopPropagation();
		}
		if(isInt($("#comForm input[name=accOrder]").val())){
			$("#comForm input[name=accOrder]").next().hide();
		} else{
			$("#comForm input[name=accOrder]").next().show();
			event.preventDefault();
			event.stopPropagation();
		}
		this.classList.add('was-validated');
	});
	*/
});

