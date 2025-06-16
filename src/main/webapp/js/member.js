/**
 * 유효성 검사
 */

function loginCheck() {
	if (document.frm.userid.value.length == 0) {
		alert("아이디를 써주세요.");
		frm.userid.focus();
		return false;
	}
	if (document.frm.pwd.value == "") {
		alert("비밀번호는 반드시 입력해야 합니다.");
		frm.pwd.focus();
		return false;
	}
	return true;
}

function idCheck() {
	if (document.frm.userid.value == "") {
		alert("아이디를 입력하여 주십시오.");
		document.frm.userid.focus();
		return;
	}
	if (document.frm.userid.value.length < 4) {
		alert("아이디는 4글자 이상이어야 합니다.");
		frm.userid.focus();
		return;
	}
	var url = "Banchan?command=checkIdOk&userid=" + document.frm.userid.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizaable=no, width=450, height=400");
}

function idok(userid) {
	opener.frm.userid.value = userid;
	opener.frm.reid.value = userid;
	self.close();
}

function joinCheck() {
	if (document.frm.username.value.length == 0) {
		alert("이름을 써주세요.");
		frm.username.focus();
		return false;
	}
	if (document.frm.userid.value.length == 0) {
		alert("아이디를 써주세요.");
		frm.userid.focus();
		return false;
	}
	if (document.frm.userid.value.length < 4) {
		alert("아이디는 4글자 이상이어야 합니다.");
		frm.userid.focus();
		return false;
	}
	if (document.frm.userid.value.length > 10) {
		alert("아이디는 10글자 이하이어야 합니다.");
		frm.userid.focus();
		return false;
	}
	if (document.frm.pwd.value == "") {
		alert("비밀번호는 반드시 입력해야 합니다.");
		frm.pwd.focus();
		return false;
	}
	if (document.frm.pwd.value.length > 10) {
		alert("비밀번호는 10글자 이하이어야 합니다.");
		frm.pwd.focus();
		return false;
	}
	if (document.frm.pwd.value != document.frm.pwd_check.value) {
		alert("비밀번호가 일치하지 않습니다.");
		frm.pwd.focus();
		return false;
	}
	if (document.frm.reid.value.length == 0) {
		alert("아이디 중복체크를 해주세요.");
		frm.userid.focus();
		return false;
	}
	return true;
}