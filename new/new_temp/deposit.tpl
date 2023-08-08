{$pageName = "Deposit and Investment Page"}
{include file="header.tpl"}

<h4 class="page-title">Make Deposit</h4>


<div class="row">
    <div class="col-md-12">
        {if $fatal}

        {if $fatal == 'one_per_month'}
        You can deposit once a month only.
        {/if}

        {else}

        {literal}
        <script language="javascript"><!--
            function openCalculator(id)
            {

                w = 225; h = 400;
                t = (screen.height-h-30)/2;
                l = (screen.width-w-30)/2;
                window.open('?a=calendar&type=' + id, 'calculator' + id, "top="+t+",left="+l+",width="+w+",height="+h+",resizable=1,scrollbars=0");
                {/literal}
                    {if $qplans > 1}
                    {literal}
                    for (i = 0; i < document.spendform.h_id.length; i++)
                    {
                        if (document.spendform.h_id[i].value == id)
                        {
                            document.spendform.h_id[i].checked = true;
                        }
                    }
                    {/literal}
                        {/if}
                            {literal}
                        }

                        function updateCompound() {
                            var id = 0;
                            var tt = document.spendform.h_id.type;
                            if (tt && tt.toLowerCase() == 'hidden') {
                                id = document.spendform.h_id.value;
                            } else {
                                for (i = 0; i < document.spendform.h_id.length; i++) {
                                    if (document.spendform.h_id[i].checked) {
                                        id = document.spendform.h_id[i].value;
                                    }
                                }
                            }

                            var cpObj = document.getElementById('compound_percents');
                            if (cpObj) {
                                while (cpObj.options.length != 0) {
                                    cpObj.options[0] = null;
                                }
                            }

                            if (cps[id] && cps[id].length > 0) {
                                document.getElementById('coumpond_block').style.display = '';

                                for (i in cps[id]) {
                                    cpObj.options[cpObj.options.length] = new Option(cps[id][i]);
                                }
                            } else {
                                document.getElementById('coumpond_block').style.display = 'none';
                            }
                        }
                        var cps = {};
            --></script>
        {/literal}
        <br>


        {if $frm.say eq 'deposit_success'}
        <h1>The deposit has been successfully saved.</h1>
        <br><br>
        {/if}

        {if $frm.say eq 'deposit_saved'}
        <h1>The deposit has been saved. It will become active when the administrator checks statistics.</h1><br><br>
        {/if}

        <form method="post" name="spendform">
            <input type="hidden" name="a" value="deposit">

            {if $qplans > 1}Select a plan:<br>
            {/if}
            {section name=plans loop=$plans}
            <div class="card">
                <div class="card-body">
                    <table cellspacing="1" cellpadding="2" border="0" width="100%" class="tab">
                        <tbody><tr>
                            <td colspan="3">
                                {if $qplans > 1}
                                <input type="radio" name="h_id" value="{$plans[plans].id}" {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)} checked {/if} onclick="updateCompound()">
                                {else}
                                <input type=hidden name=h_id value='{$plans[plans].id}'>
                                {/if}
                                <b>{$plans[plans].name}</b></td>
                        </tr>
                        <tr class="head">
                            <th class="inheader">Plan</th>
                            <th class="inheader" width="200">Spent Amount ({$currency_sign})</th>
                            <th class="inheader" width="100" nowrap=""><nobr>{$plans[plans].period} Profit (%)</nobr></th>
                        </tr>
                        {section name=options loop=$plans[plans].plans}
                        <tr>
                            <td class="item">{$plans[plans].plans[options].name|escape:html}</td>
                            <td class="item" align="right">{$plans[plans].plans[options].deposit}</td>
                            <td class="item" align="right">{$plans[plans].plans[options].percent}</td>
                        </tr>
                        {/section}
                        {if $settings.enable_calculator}
                        <tr>
                            <td colspan="3" align="right"><a href="javascript:openCalculator('{$plans[plans].id}')">Calculate your profit &gt;&gt;</a></td>
                        </tr>
                        {/if}
                        </tbody></table><br><br>
                    <script>
                        cps[{$plans[plans].id}] = {$plans[plans].compound_percents_json};
                    </script>
                    
                </div>
            </div>
            {/section}
            
			<div class="bg-white rounded py-3 px-3">
            	<small>
                    {section name=p loop=$ps}
                    {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}{if $hold[p].amount > 0} / {$currency_sign}{$hold[p].amount} on hold{/if}<br>{/if}
                    {/section}
                </small>
              <div class="h5 text-muted">
				Your account balance <span class="text-info">({$currency_sign}): {$currency_sign}{$ab_formated.total}</span>
              </div>
            <table cellspacing=0 cellpadding=2 border=0>
        <tr>
            <td>Your account balance ({$currency_sign}):</td>
            <td align=right>{$currency_sign}{$ab_formated.total}</td>
            <div class="my-2">
            	<form>
                	<div class="form-group">
    				<label for="exampleInputEmail1">Amount to Spend </label>
                    <input type=text name=amount value='{$min_deposit}' class="form-control" size=15 style="text-align:right;">
                    
                    <div class="d-flex justify-content-space-around flex-wrap">
                     {section name=p loop=$ps}
                    {if $ps[p].balance > 0 and $ps[p].status == 1}
                    <input type=radio name=type value="account_{$ps[p].id}">
                    Spend from Account {$ps[p].name}
                    {/if}
                    {/section}
                    
                    
                    
                     {section name=p loop=$ps}
                    {if $ps[p].status}
                        <div class="px-3">
                            <input type=radio class="mx-3 my-1" name=type value="process_{$ps[p].id}" {if $smarty.section.p.index == 0}checked{/if}>
                            <div class="mb-1">Spend from {$ps[p].name}</div>
                        </div>
                    {/if}
                    {/section}
                    </div>
                    <button class="btn bg-info px-3 py-2 text-light" type=submit value="Spend">Submit</buttton>
                </form>
            </div>
            
{literal}
<script language=javascript>
    for (i = 0; i<document.spendform.type.length; i++) {
        if ((document.spendform.type[i].value.match(/^process_/))) {
            document.spendform.type[i].checked = true;
            break;
        }
    }
    updateCompound();
</script>
{/literal}

{/if}
</div>

{include file="footer.tpl"}