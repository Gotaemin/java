//var hw = document.getElementById('hw');
//
//hw.addEventListener('click', function(){
//    alert(hw);
//   
//})


$("#example-table-1 tr").click(function(){ 	

			var str = ""
			var tdArr = new Array();	// 배열 선언
			
			// 현재 클릭된 Row(<tr>)
			var tr = $(this);
			var td = tr.children();
			
			// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다
			console.log("클릭한 Row의 모든 데이터 : "+tr.text());
			
			// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
//			td.each(function(i){
//				tdArr.push(td.eq(i).text());
//			});
			
			
			var city = td.eq(0).text();	
			str = city; 
			
			
			if(str == '서울'){
				tdArr.push('홍대,건대,목동,강남');

			}else if(str == '경기'){
				tdArr.push('노원,구리,덕소');

			}else if(str == '인천'){
				tdArr.push('인천1,인천2,덕소');
			}else if(str == '대구'){
				
			}else if(str == '부산'){
				
			}
			
//			$("#city_result").html(city);		
			$("#city_result2").html(tdArr);	
		});
