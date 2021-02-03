/**
 * 
 */
function FocusItem(obj){
	$(obj).next('span').html('').removeClass('error');
}

function CheckItem(obj){
	var msgBox =$(obj).next('span');
	
	switch($(obj).attr('name')){
		case"RePassword":
			if($(obj).val()!=$('input[name="Password"]').val()){
				msgBox.html('the confirm password is not same as the previous');
				msgBox.addClass('error');
			}
			break;
		case"UserName":
			var url= "/Dekandoo/checkusername?name="+encodeURI($(obj).val())+"&"+new Date().getTime();
		
			// judge is "false" or "true"
			$.get(url,function(data){
			
				if(data=="false"){
					msgBox.html('this username has already been uesed!');
					msgBox.addClass('error');
				}else{
					msgBox.html().removeClass('error');
				}
			});
			
			/*	if(obj.value==""){
				msgBox.html();
			}*/
			break;
	}
}