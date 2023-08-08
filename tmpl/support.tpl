{$SiteName = "Capital Coin Investment"}
{$PageTage = "Secured Investment Platform"}
{$siteLogo = "/assets/images/logo/logo.png"}
{$siteLogoDark = "/assets/images/logo/logo.png"}
{$siteIcon = "/assets/images/logo/favicon.png"}
{$pageName = "Contact Us"}
{include file="front_header.tpl"}
<section class="section bg-lighter section-faq" id="faqs">
  <div class="container">
    <div class="row justify-content-center text-center">
      <div class="col-lg-6">
        <div class="section-head">
          <h2 class="title">Contact Us</h2>
        </div><!-- .section-head -->
      </div><!-- .col -->
    </div><!-- .row -->
    <div class="row justify-content-center">
      <div class="col-lg-6">
        <div class="my-3 mx-4">
          Do You have any questions?<br>
          We strongly recommend that you start searching for the necessary information in the <a href="?a=faq">FAQ</a>section.
          If you need advice or technical assistance, do not hesitate to contact our specialists.
          Customer support is available around the clock <br>
          You just need <br>
          to send a letter or a request via the feedback form to promptly receive the necessary assistance.
          Remember that the more detailed the description of your problem is, the sooner it will be solved.
          Do not forget to indicate your login if you are a registered user of the website.
        </div>
      </div><!-- .col -->
      <div class="col-lg-6">
        {if $say eq 'send'}
          <p class="mx-3 my-2 text-warning">Message has been successfully sent. We will back to you in next 24 hours. Thank you.</p>
        {else}

        <script language=javascript>
          {if $userinfo.logged == 1}
          {literal}
          function checkform() {
            if (document.mainform.message.value == '') {
              alert("Please type your message!");
              document.mainform.message.focus();
              return false;
            }
            return true;
          }
          {/literal}
          {else}
          {literal}
          function checkform() {
            if (document.mainform.name.value == '') {
              alert("Please type your full name!");
              document.mainform.name.focus();
              return false;
            }
            if (document.mainform.email.value == '') {
              alert("Please enter your e-mail address!");
              document.mainform.email.focus();
              return false;
            }
            if (document.mainform.message.value == '') {
              alert("Please type your message!");
              document.mainform.message.focus();
              return false;
            }
            return true;
          }
          {/literal}
          {/if}
        </script>
        <form method=post name=mainform onsubmit="return checkform()">
          <input type=hidden name=a value=support>
          <input type=hidden name=action value=send>
          {if $errors}
            <ul style="color:red">
              {if $errors.turing_image == 1}
                <li>Invalid turing image</li>
              {/if}
              {if $errors.invalid_email == 1}
                <li>Invalid email address</li>
              {/if}
            </ul>
          {/if}
          <div class="row">
            {if $userinfo.logged}
            <td>Your Name:</td>
            <td><b>{$userinfo.name}</b></td>
            {else}
            <div class="col-lg-6">
              <label>
                <input type="text" name="name" value="{$frm.name|escape:htmlall}" class="form-control" placeholder="First Name">
              </label>
            </div>
            <div class="col-lg-6">
              <label>
                <input type="text" class="form-control" placeholder="Last Name">
              </label>
            </div>
              {/if}
            {if $userinfo.logged}
              <td><b>{$userinfo.email}</b></td>
            {else}
              <label>
                <input type="text" name="email" value="{$frm.email|escape:htmlall}" class="form-control" placeholder="Email Address">
              </label>
            {/if}
            <label>
              <textarea class="form-control" name=message id="exampleFormControlTextarea1" rows="3" placeholder="Your Message">{$frm.message|escape:htmlall}</textarea>
            </label>
            {if $userinfo.validation_enabled == 1}
              <tr>
                <td class=menutxt><img src="{"?a=show_validation_image&`$userinfo.session_name`=`$userinfo.session_id`&rand=`$userinfo.rand`"|encurl}"></td>
                <label>
                  <input type="text" name=validation_number class="form-control" placeholder="Validation Number">
                </label>
              </tr>
            {/if}
            <div class="row">
              <div class="col-xl-3">
                <button class="btn bg-info mx-2 my-2 text-light" type=submit value="Send">Submit</button>
              </div>
            </div>
          </div>
        </form>
        {/if}
      </div><!-- .col -->
    </div><!-- .row -->
  </div><!-- .container -->
</section><!-- .section -->
{include file="front_footer.tpl"}