/**
 * 
 */

function productCheck() {
	if (document.frm.productName.value.length == 0) {
		alert("상품명을 써주세요.");
		document.frm.productName.focus();
		return false;
	}
	if (document.frm.price.value.length == 0) {
		alert("가격을 써주세요.");
		frm.price.focus();
		return false;
	}
	if (isNaN(document.frm.price.value)) {
		alert("숫자를 입력해야 합니다.");
		frm.price.focus();
		return false;
	}
	return true;
}

function passCheck() {
	if (document.frm.pwd.value.length == 0) {
		alert("비밀번호를 작성해주세요.");
		frm.pwd.focus();
		return false;
	}
	return true;
}