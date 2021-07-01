function idCheck(id){
	if(id == ""){
		alert("아이디를 입력해주세요.");
		document.regForm.id.focus();
	}
	else{
		var popWidth = 300;
		var popHeight = 200;
		var winHeight = document.body.clientHeight;		//현재창의 높이
		var winWidth = document.body.clientWidth;		//현재창의 너비
		var winX = window.screenLeft; 					//현재창의 x좌표
		var winY = window.screenTop;					//현재창의 y좌표
		var popX = winX + (winWidth - popWidth)/2;
		var popY = winY + (winHeight - popHeight)/2;
		url="idCheck.jsp?id="+id;
		window.open(url, "post",
				"left=" + popX + ",top="+popY+",width="+popWidth+", height="+popHeight);
	}
}

function inputCheck(){
	if(document.regForm.id.value==""){
		alert("아이디를 입력해 주세요.");
		document.regForm.id.focus();
		return;
	}
	if(document.regForm.pass.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.regForm.pass.focus();
		return;
	}
	if(document.regForm.repass.value==""){
		alert("비밀번호를 확인해 주세요.");
		document.regForm.repass.focus();
		return;
	}
	if(document.regForm.pass.value != document.regForm.repass.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regForm.repass.focus();
		return;
	}
	if(document.regForm.email.value==""){
		alert("이메일을 입력해 주세요.");
		document.regForm.email.focus();
		return;
	}
	
	var str=document.regForm.email.value;
	var atPos = str.indexOf('@');
	var atLastPos = str.lastIndexOf('@');
	var dotPos = str.indexOf('.');
	var spacePos = str.indexOf(' ');
	var commaPos = str.indexOf(',');
	var eMailSize = str.length;
	if(			atPos > 1 &&
			atPos == atLastPos &&
			dotPos > 3 &&
			spacePos == -1 &&
			commaPos == -1 &&
			atPos + 1 < dotPos &&
			dotPos + 1 < eMailSize
	);
	else{
		alert('E-mail주소 형식이 잘못 되었습니다.\n\r다시 입력해 주세요!');
		document.regForm.email.focus();
		return;
		}
			document.regForm.submit();
	}
function updateCheck(){
	if(document.regForm.pass.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.regForm.pass.focus();
		return;
	}
	if(document.regForm.repass.value==""){
		alert("비밀번호를 확인해 주세요.");
		document.regForm.repass.focus();
		return;
	}
	if(document.regForm.pass.value != document.regForm.repass.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regForm.repass.focus();
		return;
	}
	if(document.regForm.email.value==""){
		alert("이메일을 입력해 주세요.");
		document.regForm.email.focus();
		return;
	}
	
	var str=document.regForm.email.value;
	var atPos = str.indexOf('@');
	var atLastPos = str.lastIndexOf('@');
	var dotPos = str.indexOf('.');
	var spacePos = str.indexOf(' ');
	var commaPos = str.indexOf(',');
	var eMailSize = str.length;
	if(		atPos > 1 &&
			atPos == atLastPos &&
			dotPos > 3 &&
			spacePos == -1 &&
			commaPos == -1 &&
			atPos + 1 < dotPos &&
			dotPos + 1 < eMailSize
		);
		else{
			alert('E-mail주소 형식이 잘못 되었습니다.\n\r다시 입력해 주세요 !');
			document.regForm.email.focus();
			return;
		}
		document.regForm.submit();
}




