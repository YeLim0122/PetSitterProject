<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!-- js파일 참조-------------------------------- -->
<script type="text/javascript" src="js/memberCheck.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${myctx}/js/post.js"></script>
<!-- ------------------------------------------ -->

<style>
body {
	/* font-family: Arial, sans-serif; */
	/* background-color: #FFCD4A; */
	margin: 0;
	padding: 0;
}

.container {
	max-width: 500px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 10px #FFCD4A /* rgba(0, 0, 0, 0.1) */;
	border-radius: 5px;
	margin-top: 50px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 15px;
	font-family: 'omyu_pretty';
	font-size: 1.2em;
}

.form-group2 {
	margin-bottom: 15px;
	display: flex;
	justify-content: center;
	font-family: 'omyu_pretty';
	font-size: 1.3em;
}

label {
	display: block;
	margin-bottom: 5px;
}

input[type="text"], input[type="password"], input[type="address"],input[type="date"],[type="email"] {
	width: 60%;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 4px;
}


input[type="tel"] {
	width: 25%;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

select {
	width: 20%;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

#btn {
	width: 90%;
	padding: 10px;
	background-color: #FFB600;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

#btn:hover {
	background-color: #FFCD4A;
}

.error-message {
	color: #ff0000;
	margin-top: 10px;
}

.btn {
	padding: 5px;
	font-size: 0.9em;
	margin-left: 5px;
	margin-bottom: 5px;
}

#menu { font-family: 'KOTRAHOPE'; font-size:2.7em; }

</style>
</head>
<body></body>
<div class="container">
	<h2 id="menu">
		회 원 가 입
	</h2>
	<form name="form" action="${myctx}/joinG" method="POST">
		<div class="form-group">
			<label for="id">아 이 디 :</label> <input type="text" id="id" readonly name="mid"
				required>

			<button type="button" onclick="open_idcheck()"
				class="btn btn-outline-info">중복체크</button>
		</div>
		<div class="form-group">
			<label for="password">비 밀 번 호 :</label> <input type="password"
				id="password" name="pwd" required placeholder="8~16자 대,소,특수문자 모두 포함">
		</div>
		<div class="form-group">
			<label for="confirmPassword">비 밀 번 호 확 인 :</label> <input
				type="password" id="confirmPassword" name="confirmPwd" required>
		</div>
		<div class="form-group">
			<label for="nickname">닉 네 임 :</label> <input type="text"
				id="nickname" readonly name="nickname" required placeholder="특수문자 사용 불가">
			<button type="button" onclick="open_nickcheck()"
				class="btn btn-outline-info">중복체크</button>
		</div>
		<div class="form-group">
			<label for="email">이메일:</label> 
				<input type="text" id="email" name="email" required placeholder="E-mail">
		
		</div>

		<div class="form-group">
			<label for="name">이 름 :</label> <input type="text" id="name"
				name="uname" required>
		</div>
		<div class="form-group">
			<label for="phone"> 휴 대 폰 번 호 :</label> <input type="tel" id="ph1"
				name="tel1" required> <input type="tel" id="ph2" name="tel2"
				required> <input type="tel" id="ph3" name="tel3" required>
		</div>
		<div class="form-group">
			<label for="dob">생 년 월 일 :</label> <input type="date" id="dob"
				name="birthday" required>
		</div>
		<div class="form-group">
			<label for="address"> 주 소 :</label> 
			<input type="text" id="sample6_postcode" name="post" placeholder="우편번호" 
					style="width: 40%; margin-bottom: 5px;" readonly> 
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"
					class="btn btn-outline-info"><br> 
			<input type="text" id="sample6_address" name="addr1" placeholder="주소"
					style="width: 70%; margin-bottom: 5px;" readonly><br> 
			<input type="text" id="sample6_detailAddress" name="addr2" placeholder="상세주소"
					style="width: 70%; margin-bottom: 5px;"> 
			<input type="text" id="sample6_extraAddress" name="detail" placeholder="참고항목"
					style="width: 70%" readonly>
		</div>

		<div class="form-group2">
		
			<button type="button" id="btn" onclick="member_check()">회 원
				가 입</button>
		</div>
		<div class="error-message">
			<!-- error message  -->
		</div>
	</form>

</div>

