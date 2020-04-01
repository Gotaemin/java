/**
 * 
 */

var all = document.getElementById("all");
var ch1 = document.getElementsByClassName("ch1");
var terms_ch = document.getElementsByClassName("terms_ch");
var h3 = document.getElementsByTagName("h3");
var btn = document.getElementById("btn");

var h_all = document.getElementById("h_all");

var flag = false;


h_all.addEventListener("click", function() {
	all_check();
});

all.addEventListener("click", function() {
	// alert(all.checked);
	// console.log(all.checked);

	if (all.checked) {
		for (i = 0; i < ch1.length; i++) {
			ch1[i].checked = true;
		}
	} else {
		for (i = 0; i < ch1.length; i++) {
			ch1[i].checked = false;
		}
	}

});

function all_check() {
	if (!all.checked) {
		for (i = 0; i < ch1.length; i++) {
			ch1[i].checked = true;
			all.checked = true;
		}
	} else {
		for (i = 0; i < ch1.length; i++) {
			ch1[i].checked = false;
			all.checked = false;
		}
	}
}






for (i = 0; i < ch1.length; i++) {
	ch1[i].addEventListener("click", function() {
		if (this.checked == false) {
			all.checked = false;
		} else {
			for (k = 0; k < ch1.length; k++) {
				all.checked = ch1[k].checked;
			}
		}
	});
}



for (i = 1; i < h3.length; i++) {
	h3[i].addEventListener("click", function() {
//		console.log(ch1[0]);
//		console.log(this.title);
		if (ch1[this.title].checked == false) {
			ch1[this.title].checked = true;
		}else{
			ch1[this.title].checked = false;
		}
		
		for(i=0;i<ch1.length;i++){
			all.checked = ch1[i].checked;
		}
	});
}




btn.addEventListener("click", function() {
	for (i = 0; i < terms_ch.length; i++) {
		if (terms_ch[i].checked) {
			flag = true;
		} else {
			flag = false;
		}
	}

	if (flag) {
		alert("회원가입 페이지로 이동합니다.");
		location.href = "join.html";
	} else {
		alert("체크하지 않은 필수 항목이 있습니다.");
	}

});