<html>
<head>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	<title>{$pageName} | {$settings.site_name} LTD</title>
	<link href='styles/assets/custom.css' rel='stylesheet' type='text/css'>
	<link href='styles/assets/hover.css' rel='stylesheet' type='text/css'>
	<link href='styles/assets/animate.css' rel='stylesheet' type='text/css'>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link rel="icon" href="styles/assets/images/favicon.png" type="image/png"/>
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700" rel="stylesheet">
	<link href='styles/assets/bootstrap.min.css' rel='stylesheet' type='text/css'>
	<link href='styles/assets/custom_back.css' rel='stylesheet' type='text/css'>
	<script src='styles/assets/jquery.js' type='text/javascript'></script>
	<script src="styles/assets/wow.js"></script>
	<script src="styles/assets/wow.min.js"></script>
	<script type="text/javascript" src="styles/assets/bootstrap.min.js"></script>
	<script src='styles/assets/setting.js' type='text/javascript'></script>


	<script type="text/javascript">
	//// Get the CryptoCurrency Information from the API
	jQuery.ajax({
		url: "https://min-api.cryptocompare.com/data/pricemulti",
		data: "fsyms=BTC,ETH,DASH,LTC&tsyms=USD",
		dataType : 'json',
	}).done(function(data) {
		// console.log( "BTC : " + data.BTC.USD + ", ETH : " + data.ETH.USD + ", DASH : " + data.DASH.USD, LTC : " + data.LTC.USD);
		jQuery(".dashCoin").html('$' + data.DASH.USD);
		jQuery(".ethCoin").html('$' + data.ETH.USD);
		jQuery(".bitCoin").html('$' + data.BTC.USD);
		jQuery(".liteCoin").html('$' + data.LTC.USD);
	}).fail(function() {
		console.log( "API error" );
	});
</script>

{literal}	<script type="text/javascript">
	$(document).ready(function() {
		$(".cal2").click(function() {
			$(".calculate_ctn").toggle();
			$(".calculate_ctn").addClass("animated lightSpeedIn");
		});
	});
</script>



<script type="text/javascript">
	var tday=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
	var tmonth=new Array("January","February","March","April","May","June","July","August","September","October","November","December");

	function GetClock(){
		var tzOffset = -5;//set this to the number of hours offset from UTC

		var d=new Date();
		var dx=d.toGMTString();
		dx=dx.substr(0,dx.length -3);
		d.setTime(Date.parse(dx))
		d.setHours(d.getHours()+tzOffset);
		var nday=d.getDay(),nmonth=d.getMonth(),ndate=d.getDate();
		var nhour=d.getHours(),nmin=d.getMinutes(),ap;
		if(nhour==0){ap=" AM";nhour=12;}
		else if(nhour<12){ap=" AM";}
		else if(nhour==12){ap=" PM";}
		else if(nhour>12){ap=" PM";nhour-=12;}

		if(nmin<=9) nmin="0"+nmin;

		document.getElementById('clockbox').innerHTML=""+tday[nday]+", "+tmonth[nmonth]+" "+ndate+" "+nhour+":"+nmin+ap+"";
	}

	window.onload=function(){
		GetClock();
		setInterval(GetClock,1000);
	}
</script>

{/literal}





</head>

<div class="headerContainer">
	<div class="headerInner fadeInLeft wow"> <a href="?a=home" id="logo"></a>
		<p>1 BTC: <span class="bitCoin"></span></p>
		<div class="hdRight">
			<div class="mainNavRight">
				<div class="navbar">
					<div class="navbar-inner">
						<ul class="nav">
							<li><a href="?a=home">Home</a></li>
							<li><a href="?a=about">About</a></li>
							<li><a href="?a=faq">FAQ </a></li>
							<li><a href="?a=cust&amp;page=investment">PLANS</a></li>
							<li><a href="?a=support">SUPPORT</a></li>
							<li><a href="?a=paidout">PAID</a></li>
							{if $userinfo.logged != 1}
							<li><a href="?a=login" class="login">login</a></li>
							<li><a href="?a=signup" class="signup">signup</a></li>{else}
							<li><a href="?a=logout" class="login">logout</a></li>
							<li><a href="?a=account" class="signup">dashboard</a></li>{/if}
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<body>

	
