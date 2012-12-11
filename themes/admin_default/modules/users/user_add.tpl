<!-- BEGIN: main -->
<!-- BEGIN: is_forum -->
<div class="quote" style="width:780px;">
	<blockquote class="error">
		<p>
			<span>{LANG.modforum}</span>
		</p>
	</blockquote>
</div>
<div class="clear"></div>
<!-- END: is_forum -->
<!-- BEGIN: error -->
<div style="width: 780px;" class="quote">
	<blockquote class="error">
		<p>
			<span>{ERROR}</span>
		</p>
	</blockquote>
</div>
<div class="clear"></div>
<!-- END: error -->
<!-- BEGIN: edit_user -->
<script type="text/javascript" src="{NV_BASE_SITEURL}js/jquery/jquery.validate.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/language/jquery.validator-{NV_LANG_INTERFACE}.js"></script>
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.core.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.theme.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.datepicker.css" rel="stylesheet" />
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.core.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.datepicker.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>
<form id="form_user" action="{FORM_ACTION}" method="post" enctype="multipart/form-data">
	<table class="tab1">
		<tbody>
			<tr>
				<td> {LANG.account} </td>
				<td style="width:10px"> (<span style="color:#FF0000">*</span>) </td>
				<td>
				<input class="txt required" value="{DATA.username}" name="username" id="username_iavim" style="width:300px" />
				</td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td> {LANG.email} </td>
				<td style="width:10px"> (<span style="color:#FF0000">*</span>) </td>
				<td>
				<input class="txt email required" value="{DATA.email}" name="email" id="email_iavim" style="width:300px" />
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td> {LANG.password} </td>
				<td style="width:10px"> (<span style="color:#FF0000">*</span>) </td>
				<td>
				<input class="txt required password" type="password" style="width: 150px" id="pass_iavim" name="password1" value="{DATA.password1}" />
				</td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td> {LANG.repassword} </td>
				<td style="width:10px"> (<span style="color:#FF0000">*</span>) </td>
				<td>
				<input class="txt required password" type="password" style="width: 150px" name="password2" value="{DATA.password2}" />
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td> {LANG.question} </td>
				<td style="width:10px"> (<span style="color:#FF0000">*</span>) </td>
				<td>
				<input class="txt required" type="text" value="{DATA.question}" name="question" style="width:300px" />
				</td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td> {LANG.answer} </td>
				<td style="width:10px"> (<span style="color:#FF0000">*</span>) </td>
				<td>
				<input class="txt required" type="text" value="{DATA.answer}" name="answer" style="width:300px" />
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td colspan="2"> {LANG.name} </td>
				<td>
				<input class="txt" type="text" value="{DATA.full_name}" name="full_name" style="width:300px" />
				</td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td colspan="2"> {LANG.gender} </td>
				<td>
				<select name="gender">
					<!-- BEGIN: gender -->
					<option value="{GENDER.key}"{GENDER.selected}>{GENDER.title}</option>
					<!-- END: gender -->
				</select></td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td colspan="2"> {LANG.avata} </td>
				<td>
				<input type="file" name='photo' />
				</td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td colspan="2"> {LANG.birthday} </td>
				<td>
				<input name="birthday" class="datepicker" value="{DATA.birthday}" style="width: 90px;" maxlength="10" readonly="readonly" type="text" />
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td colspan="2"> {LANG.show_email} </td>
				<td>
				<input type="checkbox" name="view_mail" value="1"{DATA.view_mail} />
				</td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td style="vertical-align:top" colspan="2"> {LANG.sig} </td>
				<td>				<textarea name="sig" cols="70" rows="5" style="width:300px">{DATA.sig}</textarea></td>
			</tr>
		</tbody>
		<!-- BEGIN: group -->
		<tbody>
			<tr>
				<td style="vertical-align:top" colspan="2"> {LANG.in_group} </td>
				<td>
				<ul>
					<!-- BEGIN: list -->
					<li>
						<input type="checkbox" value="{GROUP.id}" name="group[]"{GROUP.checked} />
						<span>{GROUP.title}</span>
					</li>
					<!-- END: list -->
				</ul></td>
			</tr>
		</tbody>
		<!-- END: group -->
	</table>
	<!-- BEGIN: field -->
	<table class="tab1">
		<caption>
			{LANG.fields}
		</caption>
		<colgroup>
			<col style="width:300px"/>
			<col style="width:10px"/>
		</colgroup>
		<!-- BEGIN: loop -->
		<tbody {FIELD.tbodyclass}>
			<tr>
				<td><b>{FIELD.title}</b>
				<br>
				<i>{FIELD.description}</i></td>
				<td><!-- BEGIN: required --> (<span style="color:#FF0000">*</span>) <!-- END: required --></td>
				<td>
				<!-- BEGIN: textbox -->
				<input class="txt {FIELD.required}" type="text" name="custom_fields[{FIELD.field}]" value="{FIELD.value}" style="width:300px"/>
				<!-- END: textbox -->
				<!-- BEGIN: date -->
				<input class="txt datepicker {FIELD.required}" type="text" name="custom_fields[{FIELD.field}]" value="{FIELD.value}" style="width:90px"/>
				<!-- END: date -->
				<!-- BEGIN: textarea -->				<textarea style="width:300px" rows="5" cols="70" name="custom_fields[{FIELD.field}]">{FIELD.value}</textarea><!-- END: textarea --><!-- BEGIN: editor --> {EDITOR} <!-- END: editor --><!-- BEGIN: select -->
				<select name="custom_fields[{FIELD.field}]">
					<!-- BEGIN: loop -->
					<option value="{FIELD_CHOICES.key}" {FIELD_CHOICES.selected}>{FIELD_CHOICES.value}</option>
					<!-- END: loop -->
				</select><!-- END: loopselect --><!-- BEGIN: radio --><label for="lb_{FIELD_CHOICES.id}">
					<input type="radio" name="custom_fields[{FIELD.field}]" value="{FIELD_CHOICES.key}" id="lb_{FIELD_CHOICES.id}" {FIELD_CHOICES.checked}>
					{FIELD_CHOICES.value} </label><!-- END: radio --><!-- BEGIN: checkbox --><label for="lb_{FIELD_CHOICES.id}">
					<input type="checkbox" name="custom_fields[{FIELD.field}][]" value="{FIELD_CHOICES.key}" id="lb_{FIELD_CHOICES.id}" {FIELD_CHOICES.checked}>
					{FIELD_CHOICES.value} </label><!-- END: checkbox --><!-- BEGIN: multiselect -->
				<select name="custom_fields[{FIELD.field}][]" multiple="multiple">
					<!-- BEGIN: loop -->
					<option value="{FIELD_CHOICES.key}" {FIELD_CHOICES.selected}>{FIELD_CHOICES.value}</option>
					<!-- END: loop -->
				</select><!-- END: multiselect --></td>
			</tr>
		</tbody>
		<!-- END: loop -->
	</table>
	<!-- END: field -->
	<div style="text-align: center">
		<input type="submit" name="confirm" value="{LANG.member_add}" />
	</div>
</form>
<script type="text/javascript">
    //<![CDATA[
    document.getElementById('form_user').setAttribute("autocomplete", "off");
    $(function()
    {
        $('#form_user').validate(
        {
            rules :
            {
                username :
                {
                    minlength : 5
                },
                password :
                {
                    minlength : 6
                },
                password2 :
                {
                    equalTo : "#pass_iavim"
                }
            }
        });
        $(".datepicker").datepicker(
        {
            showOn : "both",
            dateFormat : "dd/mm/yy",
            changeMonth : true,
            changeYear : true,
            showOtherMonths : true,
            buttonImage : nv_siteroot + "images/calendar.gif",
            buttonImageOnly : true
        });
    });
    //]]>
</script>
<!-- END: edit_user -->
<!-- END: main -->