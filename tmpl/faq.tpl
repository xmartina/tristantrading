<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>{$settings.site_name} LTD</title>
	<link rel="shortcut icon" href="styles/assets/images/favicon.png">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700" rel="stylesheet">
	<link href='styles/assets/bootstrap.min.css' rel='stylesheet' type='text/css'>
	<link href='styles/assets/animate.css' rel='stylesheet' type='text/css'>
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
</head>

<body>
	<div class="wrapper">
		<div class="headerContainer">
			<div class="headerInner fadeInLeft wow">
				<a href="?a=home" id="logo"></a>
				<p>1 BTC: <span class="bitCoin"></span>
				</p>
				<div class="hdRight">
					<div class="mainNavRight">
						<div class="navbar">
							<div class="navbar-inner">
								<ul class="nav">
									<li><a href="?a=home">Home</a>
									</li>
									<li><a href="?a=about">About</a>
									</li>
									<li><a style="color:#c79021!important;" href="?a=faq">FAQ </a>
									</li>
									<li><a href="?a=cust&amp;page=investment">PLANS</a>
									</li>
									<li><a href="?a=affiliate">AFFILIATES</a>
									</li>
									<li><a href="?a=support">SUPPORT</a>
									</li>
									<li><a href="?a=paidout">PAID</a>
									</li>{if $userinfo.logged != 1}
									<li><a href="?a=login" class="login">login</a>
									</li>
									<li><a href="?a=signup" class="signup">signup</a>
									</li>{else}
									<li><a href="?a=account" class="signup">dashboard</a>
									</li>{/if}</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="bannerContainer">
				<div class="bannerInner insideheader fadeInRight wow">
					<div class="ctn-banner">
						<h3>FAQ</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="inside_wrap">
			<div class="inside_inner">
				<div class="panel-group one" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">What is {$settings.site_name} LTD?</a></h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">The {$settings.site_name} LTD is modern investment program who owned by {$settings.site_name} LTD based in the United Kingdom. Our Corporate Headquarters is located here: 21 Kensington High Street, Kensington, London, United Kingdom, W8 5NP . Company registration number is NO.111222333.You can I check the company <a href="https://beta.companieshouse.gov.uk/company/111222333" target="_blank">Companies House</a>
								The {$settings.site_name} LTD offers high-return investing in the Forex, digital currency known as Bitcoin, stock market and Fintech start-ups. Our company is constantly evolving, it improves its marketing components and creates new investment proposals. All this makes the {$settings.site_name} LTD an industry leader and to be able to adapt to the constantly changing market conditions.</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"> How does {$settings.site_name} LTD earn profits for its members?</a> </h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								<div class="panel-body">{$settings.site_name} LTD is involved in cloud mining, which enables our company to earn Bitcoins without mining hardware, software, electricity, or bandwidth.</div>
							</div>
						</div>
						<div class="panel panel-default two">
							<div class="panel-heading" role="tab" id="heading2">
								<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
									Can I meet with someone from investors just to check the work of {$settings.site_name} LTD company? </a> </h4>
								</div>
								<div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
									<div class="panel-body">Yes, you can visit our office to make sure that we're real! Company address is: {$settings.site_name} LTD 21 Kensington High Street, Kensington, London, United Kingdom, W8 5NP .</div>
								</div>
							</div>
							<div class="panel panel-default two">
								<div class="panel-heading" role="tab" id="heading3">
									<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
										Who can be a client of {$settings.site_name} LTD? </a> </h4>
									</div>
									<div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
										<div class="panel-body">Everyone may be client of {$settings.site_name} LTD, regardless of nationality or residence. The only condition is, you must be of mature age (at least 18 years old) to become our client.</div>
									</div>
								</div>
								<div class="panel panel-default two">
									<div class="panel-heading" role="tab" id="heading4">
										<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">Where can I read about your investment proposal and also calculate my profit? </a> </h4>
									</div>
									<div id="collapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading4">
										<div class="panel-body">You can check all our investment plans and calculate your profit on Home page & in your account on "Make Deposit" page.</div>
									</div>
								</div>
								<div class="panel panel-default two">
									<div class="panel-heading" role="tab" id="heading5">
										<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse5" aria-expanded="false" aria-controls="collapse5">Where I can check your current exchange rate of Bitcoin? </a> </h4>
									</div>
									<div id="collapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading5">
										<div class="panel-body">We use the exchange rate on	<a target="_blank" href="https://markets.blockchain.info/"><font color="#0773C7"> https://markets.blockchain.info</font></a>
										</div>
									</div>
								</div>
								<div class="panel panel-default two">
									<div class="panel-heading" role="tab" id="heading6">
										<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse6" aria-expanded="false" aria-controls="collapse6">How can I invest with {$settings.site_name} LTD ? </a> </h4>
									</div>
									<div id="collapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading6">
										<div class="panel-body">To make a investment you must first become a member of {$settings.site_name} LTD. Once you are signed up, you can make your first deposit. All deposits must be made through the Members Area. You can login using the member username and password you receive when signup.</div>
									</div>
								</div>
								<div class="panel panel-default two">
									<div class="panel-heading" role="tab" id="heading7">
										<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse7" aria-expanded="false" aria-controls="collapse7">How do I open my account in {$settings.site_name} LTD? </a> </h4>
									</div>
									<div id="collapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading7">
										<div class="panel-body">It's quite easy and convenient. Follow this <a href="indexcca3.html?a=signup"><font color="#0773C7">link</font></a>, to sign up, fill in the registration form and then press "Register".Please remember to write down your password.</div>
									</div>
								</div>
								<div class="panel panel-default two">
									<div class="panel-heading" role="tab" id="heading8">
										<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse8" aria-expanded="false" aria-controls="collapse8">Can I open several accounts in your program? </a> </h4>
									</div>
									<div id="collapse8" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading8">
										<div class="panel-body">No, you can't open several accounts in {$settings.site_name} LTD. Using the same computer and the same IP address. If You will Breaking this rule Your All Accounts Will be Suspend Permanently.</div>
									</div>
								</div>
								<div class="panel panel-default two">
									<div class="panel-heading" role="tab" id="heading9">
										<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse9" aria-expanded="false" aria-controls="collapse9">How can I change my e-mail address or password? </a> </h4>
									</div>
									<div id="collapse9" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading9">
										<div class="panel-body">Sign in into your {$settings.site_name} LTD account and click on the "Edit Account". You can change your password or Email there.</div>
									</div>
								</div>
								<div class="panel panel-default two">
									<div class="panel-heading" role="tab" id="heading11">
										<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse11" aria-expanded="false" aria-controls="collapse11">What if I can't log into my account because I forgot my password? </a> </h4>
									</div>
									<div id="collapse11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading11">
										<div class="panel-body">Click Your forgot	<a target="_blank" href="index8083.html?a=forgot_password"><font color="#0773C7">Password link</font></a>, enter your username or e-mail and follow instruction. You'll receive your account information in seconds.</div>
									</div>
								</div>
								<div class="panel panel-default two">
									<div class="panel-heading" role="tab" id="heading12">
										<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse12" aria-expanded="false" aria-controls="collapse12">How often can I check my account balance? </a> </h4>
									</div>
									<dd aria-hidden="true" id="accordion3" class="accordion-content accordionItem is-collapsed">
										<div id="collapse12" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading12">
											<div class="panel-body">You can access to your account information for 24 hours, seven days a week over the Internet.</div>
										</div>
									</div>
									<div class="panel panel-default two">
										<div class="panel-heading" role="tab" id="heading13">
											<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse13" aria-expanded="false" aria-controls="collapse13">I wish to invest with {$settings.site_name} LTD but I don't have an any ecurrency account. What
												should I do? </a> </h4>
											</div>
											<div id="collapse13" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading13">
												<div class="panel-body">You can open a free PerfectMoney account here: <a href="http://www.perfectmoney.is/"><font color="#0773C7">www.perfectmoney.is</font></a> and Buy, sell or Exchange Perfectmoney USD <a href="https://www.changex.com/"><font color="#0773C7">Click here</font></a>
													<br>You can open a free Payeer account here: <a href="https://payeer.com/"><font color="#0773C7">www.payeer.com</font></a> and Buy, sell or Exchange Payeer USD <a href="https://www.changex.com/"><font color="#0773C7">Click here</font></a>
													<br>You can open a free BitCoin Wallet here: <a href="https://blockchain.info/wallet/#"><font color="#0773C7">www.blockchain.info</font></a> and Buy, sell or Exchange BitCoin USD <a href="https://www.changex.com/"><font color="#0773C7">Click here</font></a>
													<br>You can open a free Litecoin account here: <a href="https://www.coinpayments.net/"><font color="#0773C7">www.coinpayments.net</font></a> and Buy, sell or Exchange Litecoin USD <a href="http://magnatus.com/"><font color="#0773C7">Click here</font></a>
													<br>You can open a free Ethereum account here: <a href="https://www.coinpayments.net/"><font color="#0773C7">www.coinpayments.net</font></a> and Buy, sell or Exchange Ethereum USD <a href="http://magnatus.com/"><font color="#0773C7">Click here</font></a>
													<br>You can open a free Bitcoincash account here: <a href="https://www.coinpayments.net/"><font color="#0773C7">www.coinpayments.net</font></a> and Buy, sell or Exchange Bitcoincash USD <a href="http://magnatus.com/"><font color="#0773C7">Click here</font></a>
													<br>You can open a free Dogecoin account here: <a href="https://www.coinpayments.net/"><font color="#0773C7">www.coinpayments.net</font></a> and Buy, sell or Exchange Dogecoin USD <a href="http://magnatus.com/"><font color="#0773C7">Click here</font></a>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading14">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse14" aria-expanded="false" aria-controls="collapse14">How can I invest, what payment methods are acceptable? </a> </h4>
											</div>
											<div id="collapse14" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading14">
												<div class="panel-body">{$settings.site_name} LTD accepts popular e-currencies such as Perfectmoney , Payeer , Bitcoin , Bitcoin Cash , Litecoin , Ethereum , Dash, Dogecoin and Visa/Master Card.</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading15">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse15" aria-expanded="false" aria-controls="collapse15">How long does it take for my deposit to be added to my account? </a> </h4>
											</div>
											<div id="collapse15" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading15">
												<div class="panel-body">Your account will be updated as fast as you deposit.</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading16">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse16" aria-expanded="false" aria-controls="collapse16">Can I have several deposits at the same time? </a> </h4>
											</div>
											<div id="collapse16" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading16">
												<div class="panel-body">Yes, you can have as many deposits as you want.</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading17">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse17" aria-expanded="false" aria-controls="collapse17">What are the maximum and minimum limits for deposits? </a> </h4>
											</div>
											<div id="collapse17" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading17">
												<div class="panel-body">You can deposit any amount from only 1$ and up to No Limit through any payment system.</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading18">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse18" aria-expanded="false" aria-controls="collapse18">Can I make a deposit directly from my account balance? </a> </h4>
											</div>
											<div id="collapse18" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading18">
												<div class="panel-body">Yes! To make a deposit from your {$settings.site_name} LTD account balance. Simply login into your {$settings.site_name} LTD account and click on "Make Deposit" and select the Deposit from Account Balance Radio button.</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading19">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse19" aria-expanded="false" aria-controls="collapse19">How long does it take to add my Bitcoin, Litcoin, Ethereum, Bitcoin Cash , Dash & Dogecoin deposit? </a> </h4>
												<div id="collapse19" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading19">
													<div class="panel-body">It will be done in 5 to 15 minutes after your payment will be confirmed on Blockchain.info just 1-3 confirmation needed.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading121">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse121" aria-expanded="false" aria-controls="collapse121">How can I withdraw funds? </a> </h4>
												<div id="collapse121" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading121">
													<div class="panel-body">Login to your account using your username and password, go to the Withdraw section and make a withdraw request.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading122">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse122" aria-expanded="false" aria-controls="collapse122">What are the maximum and minimum limits withdrawals? </a> </h4>
												<div id="collapse122" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading122">
													<div class="panel-body">You can withdraw any amount not less than $0.10. In case you can use Bitcoin, Bitcoincash, Ethereum, Litecoin, Dash minimum withdrawal is $1.5 . and maximum withdraw is Unlimited.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading23">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse23" aria-expanded="false" aria-controls="collapse23">Does a daily profit paid directly to my E-currency account? </a> </h4>
												<div id="collapse23" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading23">
													<div class="panel-body">No, profits are genrated on your {$settings.site_name} LTD account Balance and you can withdraw them anytime.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading24">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse24" aria-expanded="false" aria-controls="collapse24">After I make a withdrawal request, when will the funds be available on my e-currency account? </a> </h4>
												<div id="collapse24" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading24">
													<div class="panel-body">Funds are usually available automatically to your accounts. All Withdrawal is processed instantly you can get it in your payment account in seconds.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading25">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse25" aria-expanded="false" aria-controls="collapse25">How often do you accrue interest and make payments? </a> </h4>
												<div id="collapse25" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading25">
													<div class="panel-body">This depends on what investment plan you have chosen. We have investment plans where interest is added daily. Interest payouts (no matter what investment plan you chose) are processed 24/7.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading26">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse26" aria-expanded="false" aria-controls="collapse26">I made a request to withdraw but it was not processed yet, at same time other requests are processed. What should I do? </a> </h4>
												<div id="collapse26" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading26">
													<div class="panel-body">Most likely you didn't fill your payment details in account or made it incorrectly. Please contact our support to add your payment accounts and edit your profile. Never forget to set up your payment details when you register an account.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading27">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse27" aria-expanded="false" aria-controls="collapse27">Why my withdrawal request was cancelled and money is on my account balance again? </a> </h4>
												<div id="collapse27" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading27">
													<div class="panel-body">It seems that some of your payment details are filled incorrectly or not available in your account. Check your account and contact support if necessary.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading28">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse28" aria-expanded="false" aria-controls="collapse28">Do you charge fees for payouts? </a> </h4>
												<div id="collapse28" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading28">
													<div class="panel-body">No, we do not charge any fees. The profit that we make from our overall investments is enough for us. We do not need to charge any fees for any transaction, however, payment processors may charge you with receiving fees and we have no control over that.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading29">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse29" aria-expanded="false" aria-controls="collapse29">Do you have affiliate program? </a> </h4>
												<div id="collapse29" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading29">
													<div class="panel-body">Yes, we do. We will Pay 4.0% on 1st Level for every deposit of your referrals depending on their number: 1 or more Referrals: 4.0%.You can also earn 0.5% on 2nd Level and 0.5% on 3rd Level.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading31">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse31" aria-expanded="false" aria-controls="collapse31">When my affiliate bonus will be paid? </a> </h4>
												<div id="collapse31" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading31">
													<div class="panel-body">Affiliate bonus will be paid to your account balance as soon as your referral processes his deposit.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading32">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse32" aria-expanded="false" aria-controls="collapse32">How can I view the total number of referrals I have? </a> </h4>
												<div id="collapse32" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading32">
													<div class="panel-body">Sign in to your account and go to "Your Referrals" section. You will find everything related to your referrals there, you can also find our banners in Banners section.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading33">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse33" aria-expanded="false" aria-controls="collapse33">Is there any limit in the amounts of the referral commission? </a> </h4>
												<div id="collapse33" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading33">
													<div class="panel-body">No, there is no limit. Therefore, the more your referrals invest, the more you can earn.</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default two">
											<div class="panel-heading" role="tab" id="heading34">
												<h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse34" aria-expanded="false" aria-controls="collapse34">
													Do I need to invest if I want to start attracting others and earn referral commissions? </a> </h4>
													<div id="collapse34" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading34">
														<div class="panel-body">No, you do not need to invest if you want to start earning referral commission. You only need to open an account.</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="solidContainer">
									<div class="solidInner zoomIn wow">
										<div class="solid">
											<a href="#" class="solid1"></a>
											<a href="#" class="solid2"></a>
											<a href="#" class="solid3"></a>
											<a href="#" class="solid4"></a>
											<a href="#" class="solid5"></a>
											<a href="#" class="solid6"></a>
											<a href="#" class="solid7"></a>
											<a href="#" class="solid8"></a>
										</div>
									</div>
								</div>
								<div class="footerContainer">
									<div class="footerInner">
										<div class="ft-row1">
											<h3>&copy; 2019. <a href="?a=home">{$settings.site_name}</a> ALL RIGHTS RESERVED</h3>
										</div>
										<div class="ft-part1"> <a href="?a=about">ABOUT US</a> <a href="?a=news">NEWS</a> <a href="?a=faq">FAQ</a> <a href="?a=support">support</a> <a href="?a=rules">terms</a><a href="?a=paidout">ALL PAID </a></div>
									</div>
								</div>
							</body>

							</html>
