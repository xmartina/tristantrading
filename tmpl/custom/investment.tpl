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
                  <li><a style="color:#c79021!important;" href="?a=cust&amp;page=investment">PLANS</a></li>
                  <li><a href="?a=affiliate">AFFILIATES</a></li>
                  <li><a href="?a=support">SUPPORT</a></li>
                  <li><a href="?a=paidout">PAID</a></li>
                  {if $userinfo.logged != 1}
                  <li><a href="?a=login" class="login">login</a></li>
                  <li><a href="?a=signup" class="signup">signup</a></li>{else}

                  <li><a href="?a=account" class="signup">dashboard</a></li>{/if}
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="bannerContainer">
      <div class="bannerInner insideheader fadeInRight wow">
        <div class="ctn-banner">
          <h3> Investment <span>Plans</span></h3>
        </div>
      </div>
    </div>

  </div>

  <div class="investmentContainer">
    <div class="investmentInner zoomIn wow">
      <h2><span>{$settings.site_name} LTD</span> BENEFITS</h2>
      <hr>
      <div class="ctn-inves-row">
        <div class="ctn-Instant Instant-part1">
          <h1>Professional Team</h1>
          <p>We are team of professional traders in Forex &amp; Crypto Exchange and Coins trading and Crypto Mining who know how to grab the profit end of the day.</p>
        </div>
        <div class="ctn-Instant Instant-part2">
          <h1>ddos protection</h1>
          <p>We are using one of most experienced , professional and trusted DDoS Protection and mitigation provider.</p>
        </div>
        <div class="ctn-Instant Instant-part3">
          <h1>COMODO SSL Security</h1>
          <p>Our website using Comodo SSL Security, SSL <br> encryption and that confirms that the presented content is the genuine and legitimate.</p>
        </div>
        <div class="ctn-Instant Instant-part4">
          <h1>UK Registered Company</h1>
          <p>We are a legal company registered in the UK providing its investment services to the members all around the world.</p>
        </div>
        <div class="ctn-Instant Instant-part5">
          <h1>Instant Withdrawals</h1>
          <p>Get your payment instantly as soon as you request it! Minimum withdrawal is $0.1. There is no fee for withdrawals of hourly interest.</p>
        </div>
        <div class="ctn-Instant Instant-part6">
          <h1>Great Customer Support</h1>
          <p>We understand how important having reliable support service is to you. Please don't hesitate to contact us should you have any questions and we will get back to you in 24 Hours!</p>
        </div>
      </div>
    </div>
  </div>
  <div class="becomeContainer">
    <div class="becomeInner fadeInRight wow">
      <div class="ctn-become">
        <p>The best investment plan of 2019. You can earn<span> up 40% hourly.</span></p>
      </div>
    </div>
  </div>
  <div class="startedContainer">
    <div class="startedInner">
      <div class="ctn-started">
        <div class="started-row started-part1 fadeInLeft wow">
          <h3>Starter Plan</h3>
          <h1>6%</h1>
          <h2> Hourly For 20 Hours</h2>
          <p>Minimum Deposit: $1</p>
          <p>Maximum Deposit: $10,000</p>
          <a href="?a=deposit">deposit</a>
        </div>
        <div class="started-row started-part2 fadeInRight wow">
          <h3>premium Plan</h3>
          <h1>4%</h1>
          <h2> Hourly For 40 Hours</h2>
          <p>Minimum Deposit: $5</p>
          <p>Maximum Deposit: $10,000</p>
          <a href="?a=deposit">deposit</a>
        </div>
        <div class="started-row started-part3 fadeInRight wow">
          <h3>advanced Plan</h3>
          <h1>20%</h1>
          <h2> Hourly For 10 Hours</h2>
          <p>Minimum Deposit: $450</p>
          <p>Maximum Deposit: $10,000</p>
          <a href="?a=deposit">deposit</a>
        </div>
        <div class="started-row started-part4 fadeInRight wow">
          <h3>vip Plan</h3>
          <h1>40%</h1>
          <h2> Hourly For 5 Hours</h2>
          <p>Minimum Deposit: $400</p>
          <p>Maximum Deposit: $10,000</p>
          <a href="?a=deposit">deposit</a>
        </div>
      </div>
    </div>
  </div>
  <div class="CalculateContainer">
    <div class="CalculateInner fadeInLeft wow">
      <div class="calu">

        
        <table class="cal">
          <th>
            <td>
              <lebel>Select Plan</lebel>
              <select id="calc_plan" style="
              border: 0px;
              padding: 6px;
              width: 110%;
              border-radius: 30px;
              text-transform: capitalize;
              letter-spacing: 0.5px;
              outline: none;
              margin-top:7px;">
              <option value="1"> 6% hourly for 20 hours </option>
              <option value="2">4% hourly for 40 hours</option>
              <option value="3">20% hourly for 10 hours </option>
              <option value="4"> VIP 40% Hourly For 5 Hours</option>
            </select></td>
          </th>

          <th>
            <td>
              <lebel>Enter Amount</lebel>
              <input id="inv_amount" type="text" value="100"/>
            </td>
          </th>

          <th>
            <td>
              <lebel>Total Profit</lebel>
              <input id="net_profit" type="text" value="100" readonly=""/>
            </td>
          </th>

          <th>
            <td>
              <lebel>Total Percent</lebel>
              <input id="assign_per" type="text" value="100" readonly=""/>
            </td>
          </th>

          <th>
            <td>
              <lebel>Total Return</lebel>
              <input id="total_return" type="text" value="100" readonly=""/>
            </td>
          </th>

        </table>


      </div>
    </div>
  </div>


  <div class="primebitContainer">
    <div class="primebitInner zoomIn wow ">
      <h1><span>3 level</span> Referral commission</h1>
      <div class="ctn-level fadeInLeft wow">
        <div class="livel-part">
          <h2>4<span>%</span></h2>
          <p>livel1</p>
        </div>
        <div class="livel-img">
          <img src="styles/assets/images/call-ic2.png">
        </div>
        <div class="livel-part">
          <h2>0.5<span>%</span></h2>
          <p>livel2</p>
        </div>
        <div class="livel-img">
          <img src="styles/assets/images/call-ic2.png">
        </div>
        <div class="livel-part">
          <h2>0.5<span>%</span></h2>
          <p>livel3</p>
        </div>
      </div>
      <div class="text-level fadeInRight wow">
        <p>At {$settings.site_name} LTD, we believe there is no better advertisement than satisfied clients. No wonder that majority of our new clients are affiliates from our existing clients. We are proud that our clients like to recommend our financial service to others. Because of this, we are pleased to offer one of the strongest online affiliate programs in the financial service industry, with a high commission rate, customized tools and reports, and timely commission payouts. </p>
        <p>{$settings.site_name} LTD is paying for the popularization of its investment program and anyone can be rewarded. To benefit from this, you have to tell your friends, relatives or colleagues about our company. We offer 3 level referral commissions: The first level of direct referrals from you will entitle you to a commission of 4%, and second level gives you commission of 0.5% and third level is 0.5% . You can surely make a lot of money from the referral commissions you get!</p>
      </div>
    </div>
  </div>

</div>
</div>
</div>
<div class="solidContainer">
  <div class="solidInner zoomIn wow">
    <div class="solid"> <a href="#" class="solid1"></a> <a href="#" class="solid2"></a> <a href="#" class="solid3"></a> <a href="#" class="solid4"></a> <a href="#" class="solid5"></a> <a href="#" class="solid6"></a> <a href="#" class="solid7"></a> <a href="#" class="solid8"></a> </div>
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
