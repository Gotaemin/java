/**
 * 
 */


var all = document.getElementById("all");
		var ch1 = document.getElementsByClassName("ch1");
		var btn = document.getElementById("btn");
		var flag = false;

		all.addEventListener("click", function() {
			// 			alert(all.checked);
			console.log(all.checked);

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
		
		
		for(i=0;i<ch1.length;i++){
			ch1[i].addEventListener("click",function(){
				if(this.checked == false){
					all.checked = false;
				}else{
					for(k=0;k<ch1.length;k++){
						all.checked = ch1[k].checked;
					}
				}
			});
		}
		
		
		btn.addEventListener("click",function(){
			if(all.checked){
				alert("회원가입 페이지로 이동합니다.");
				location.href="join.html";
			}else{
				alert("체크하지 않은 요소가 있습니다.");
				
			}
				
		});