{$pageName = "My Transaction History"}
{include file="header.tpl"}

<h4 class="page-title">History</h4>



            <div class="row">
                <div class="col-md-12">

                    {literal}
                    <script language="javascript">
                        function go(p)
                        {
                            document.opts.page.value = p;
                            document.opts.submit();
                        }
                    </script>
                    {/literal}

                    <table cellspacing="0" cellpadding="0" border="0" width="100%" class="tab">

                        <tbody><tr>
                            <form method="post" name="opts">
                            <input type=hidden name=a value=earnings>
            				<input type=hidden name=page value={$current_page}>
                            <td>
                                <select name="type" class="form-control" onchange="document.opts.submit();" style="width:250px;">
                                    <option value="">All transactions</option>
                                    {section name=opt loop=$options}
                                    <option value="{$options[opt].type}" {if $options[opt].selected}selected{/if}>{$options[opt].type_name}</option>
                    				{/section}
                                </select>
                                {if $ecs}
                                <br><img src="images/q.gif" width="1" height="4"><br>
                                <select name="ec" class="form-control" style="width:250px;">
                                    <option value="-1">All eCurrencies</option>
                                    {section name=ec loop=$ecs}
                                    <option value={$ecs[ec].id} {if $frm.ec eq $ecs[ec].id}selected{/if}>{$ecs[ec].name}</option>
                    				{/section}
                                </select>
                                {/if}
                            </td>
                            <td align="right">
                                From: <select name="month_from" class="form-control" style="width100px;">
                                    {section name=month_from loop=$month}
                                     <option value={$smarty.section.month_from.index+1} {if $smarty.section.month_from.index+1 == $frm.month_from}selected{/if}>{$month[month_from]}
                    				{/section}
                                    </select> &nbsp;
                                <select name="day_from" class="form-control" style="width100px;">
                                    {section name=day_from loop=$day}
                                    <option value={$smarty.section.day_from.index+1} {if $smarty.section.day_from.index+1 == $frm.day_from}selected{/if}>{$day[day_from]}
                    				{/section}
                                    </select> &nbsp;

                                <select name="year_from" class="form-control" style="width100px;">
                                    {section name=year_from loop=$year}
                                     <option value={$year[year_from]} {if $year[year_from] == $frm.year_from}selected{/if}>{$year[year_from]}
                    				{/section}
                                    </select>
                            </td>

                            <td>
                                To: <select name="month_to" class="form-control" style="width100px;">
                                  {section name=month_to loop=$month}
                                  <option value={$smarty.section.month_to.index+1} {if $smarty.section.month_to.index+1 == $frm.month_to}selected{/if}>{$month[month_to]}
                    				{/section}
                                  </select> &nbsp;
                                <select name="day_to" class="form-control" style="width100px;">
                                    {section name=day_to loop=$day}
                                    <option value={$smarty.section.day_to.index+1} {if $smarty.section.day_to.index+1 == $frm.day_to}selected{/if}>{$day[day_to]}
                    				{/section}
                                    </select> &nbsp;

                                <select name="year_to" class="form-control" style="width100px;">
                                    {section name=year_to loop=$year}
                                    <option value={$year[year_to]} {if $year[year_to] == $frm.year_to}selected{/if}>{$year[year_to]}
                    				{/section}
                                    </select>

                            </td>
                            <td>
                                &nbsp; <input type="submit" value="Go" class="form-control btn btn-primary ">
                            </td>
                        </tr></tbody></table>

                    <br><br>


					
                    <table cellspacing="1" cellpadding="2" border="0" width="100%" class="tab">
                        <tbody><tr>
                            <th class="inheader"><b>Type</b></th>
                            <th class="inheader" width="200"><b>Amount</b></th>
                            <th class="inheader" width="270"><b>Date</b></th>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">No transactions found</td>
                        </tr>
                        <tr><td colspan="3">&nbsp;</td>

                        </tr><tr>
                            <td colspan="2">Total:</td>
                            <td align="right"><b>$ 0.00</b></td>
                        </tr>
                        </tbody></table>

                    <ul class="pagination"><li class="page-item"><a class="prev page-link disabled">&lt;&lt;</a></li><li class="page-item active"><a class="page-link">1</a></li><li class="page-item"><a class="next page-link disabled">&gt;&gt;</a></li></ul>

                </div></div>
{include file="footer.tpl"}
