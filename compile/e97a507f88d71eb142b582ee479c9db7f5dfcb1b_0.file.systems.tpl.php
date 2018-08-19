<?php
/* Smarty version 3.1.32, created on 2018-08-19 12:02:48
  from 'E:\xampp\htdocs\NMS-Database\styles\bootstrap4\systems.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5b7940489e1f47_80329383',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e97a507f88d71eb142b582ee479c9db7f5dfcb1b' => 
    array (
      0 => 'E:\\xampp\\htdocs\\NMS-Database\\styles\\bootstrap4\\systems.tpl',
      1 => 1534625419,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5b7940489e1f47_80329383 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'E:\\xampp\\htdocs\\NMS-Database\\include\\smarty\\plugins\\modifier.truncate.php','function'=>'smarty_modifier_truncate',),));
if (isset($_smarty_tpl->tpl_vars['systemEdit']->value)) {?>
<h3><?php if ($_smarty_tpl->tpl_vars['action']->value == 'edit') {?>System bearbeiten<?php } else { ?>Neues System hinzufügen<?php }?></h3>
<form class="mt-4" method="POST" action="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&amp;page=systems&amp;action=manage&amp;action=edit">
	<input type="hidden" name="systemId" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['id'];?>
"><input type="hidden" name="galaxyId" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['galaxyId'];?>
">
	<div class="form-row">
		<div class="form-group col-6">
			<label for="inputEmail4">Name des Systems</label> <input type="text" name="name" class="form-control" id="inputEmail4" placeholder="Name des Systems" value="<?php echo $_smarty_tpl->tpl_vars['system']->value['name'];?>
">
		</div>
		<div class="form-group col-4 ml-auto">
			<label for="inputPassword4">Dominate Lebensform</label><select name="lifeformId" id="inputState" class="form-control">
				<option value="" <?php if ($_smarty_tpl->tpl_vars['system']->value['lifeformId'] == null) {?>selected<?php }?>>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['lifeform']->value, 'lifeformRow', false, 'lifeformId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['lifeformId']->value => $_smarty_tpl->tpl_vars['lifeformRow']->value) {
?>
				<option value="<?php echo $_smarty_tpl->tpl_vars['lifeformId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['system']->value['lifeformId'] == $_smarty_tpl->tpl_vars['lifeformId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['lifeformRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</select>
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-md-4">
			<label for="inputCity">Wirtschaft</label> <select name="economyId" id="inputState" class="form-control">
				<option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['economy']->value, 'economyRow', false, 'economyId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['economyId']->value => $_smarty_tpl->tpl_vars['economyRow']->value) {
?>
				<option value="<?php echo $_smarty_tpl->tpl_vars['economyId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['system']->value['economyId'] == $_smarty_tpl->tpl_vars['economyId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['economyRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</select>
		</div>
		<div class="form-group col-md-4">
			<label for="inputCity">Wohlstand</label> <select name="wealthId" id="inputState" class="form-control">
				<option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['wealth']->value, 'wealthRow', false, 'wealthId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['wealthId']->value => $_smarty_tpl->tpl_vars['wealthRow']->value) {
?>
				<option value="<?php echo $_smarty_tpl->tpl_vars['wealthId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['system']->value['wealthId'] == $_smarty_tpl->tpl_vars['wealthId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['wealthRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</select>
		</div>
		<div class="form-group col-md-4">
			<label for="inputCity">Konfliktstufe</label> <select name="conflictId" id="inputState" class="form-control">
				<option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['conflict']->value, 'conflictRow', false, 'conflictId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['conflictId']->value => $_smarty_tpl->tpl_vars['conflictRow']->value) {
?>
				<option value="<?php echo $_smarty_tpl->tpl_vars['conflictId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['system']->value['conflictId'] == $_smarty_tpl->tpl_vars['conflictId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['conflictRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</select>
		</div>
	</div>
	<?php if ($_smarty_tpl->tpl_vars['action']->value == 'edit') {?>
	<table class="table table-hover table-sm">
		<thead class="thead-dark">
			<tr>
				<th colspan="2" scope="col">Planet / Mond</th>
				<th scope="col">Biom</th>
				<th scope="col">Wetter</th>
				<th scope="col">Wächter</th>
				<th scope="col">Notizen</th>
			</tr>
		</thead>
		<tbody>
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['planets']->value, 'planet', false, 'planetId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['planetId']->value => $_smarty_tpl->tpl_vars['planet']->value) {
?>
			<tr>
				<td><?php echo $_smarty_tpl->tpl_vars['planet']->value['name'];?>
</td>
				<td><?php if ($_smarty_tpl->tpl_vars['planet']->value['planetMoonId']) {?>Mond von <?php echo $_smarty_tpl->tpl_vars['planets']->value[$_smarty_tpl->tpl_vars['planet']->value['planetMoonId']]['name'];
}?></td>
				<td><?php echo $_smarty_tpl->tpl_vars['planet']->value['biomeId'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['planet']->value['weatherId'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['planet']->value['sentinelId'];?>
</td>
				<td><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['planet']->value['notes']);?>
</td>
			</tr>
			<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
		</tbody>
	</table>
	<?php } else { ?>
	<div class="form-row">
		<div class="form-group col-md-6">
			<input type="hidden" name="count" value="1"> <label for="planetAmount">Planeten / Monde</label>
			<div id="planet1" class="input-group">
				<input class="form-control" id="planetl1" name="planetname[]" type="text" placeholder="Name des Planeten oder Mondes">
				<div class="input-group-append">
					<button id="add" class="btn btn-outline-secondary" style="width: 50px">+</button>
				</div>
			</div>
			<span id="addbefore"></span>
		</div>
		<div class="form-group col-md-4"></div>
	</div>
	<?php echo '<script'; ?>
 type="text/javascript">
	$(document).ready(function(){
	    var next = 1;
	    $("#add").click(function(e){
	        e.preventDefault();
	        var newplanet = "#planet" + next;
	        next = next + 1;
	        var append = '<div id="planet' + next + '" class="input-group"><input class="form-control mt-3" id="planetl' + next + '" name="planetname[]" type="text"><div class="input-group-append"><button id="r' + (next - 1) + '" class="btn btn-danger remove-me mt-3" style="width: 50px">-</button></div></div>';
	        $("#addbefore").before(append);
	        //alert($(newplanet).attr('data-source'));
	        //$("#planet" + next).attr('data-source',$(newplanet).attr('data-source'));
	        $("#count").val(next);	        
	            $('.remove-me').click(function(e){
	                e.preventDefault();
	                var fieldNum = parseInt(this.id.substr(1))+1 ;
	                var fieldID = "#planet" + fieldNum ;
	                $(fieldID).remove();
	            });
	    });	    
	});	<?php echo '</script'; ?>
>
	<?php }?>
	<div class="form-group">
		<label for="inputAddress">Notizen</label>
		<textarea name="notes" class="form-control" id="exampleFormControlTextarea1" rows="3"><?php echo $_smarty_tpl->tpl_vars['system']->value['notes'];?>
</textarea>
	</div>
	<button type="submit" class="btn btn-primary float-right">Absenden</button>
	<button type="reset" class="btn btn-secondary">Zurücksetzen</button>
</form>
<?php } else { ?>
<table class="table table-hover table-sm">
	<thead class="thead-dark">
		<tr>
			<th scope="col">System</th>
			<th scope="col">Fraktion</th>
			<th scope="col">Wirtschaft</th>
			<th scope="col">Wohlstand</th>
			<th scope="col">Konflikt</th>
			<th scope="col">&nbsp;</th>
		</tr>
	</thead>
	<tbody>
		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['systems']->value, 'system', false, 'systemId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['systemId']->value => $_smarty_tpl->tpl_vars['system']->value) {
?>
		<tr>
			<th><?php echo $_smarty_tpl->tpl_vars['system']->value['name'];?>
</th>
			<td><?php if ($_smarty_tpl->tpl_vars['system']->value['lifeformId'] != null) {
echo $_smarty_tpl->tpl_vars['lifeform']->value[$_smarty_tpl->tpl_vars['system']->value['lifeformId']]['name'];
}?></td>
			<td><?php if ($_smarty_tpl->tpl_vars['system']->value['economyId'] != null) {
echo $_smarty_tpl->tpl_vars['economy']->value[$_smarty_tpl->tpl_vars['system']->value['economyId']]['name'];
}?></td>
			<td><?php if ($_smarty_tpl->tpl_vars['system']->value['wealthId'] != null) {
echo $_smarty_tpl->tpl_vars['wealth']->value[$_smarty_tpl->tpl_vars['system']->value['wealthId']]['name'];
}?></td>
			<td><?php if ($_smarty_tpl->tpl_vars['system']->value['conflictId'] != null) {
echo $_smarty_tpl->tpl_vars['conflict']->value[$_smarty_tpl->tpl_vars['system']->value['conflictId']]['name'];
}?></td>
			<td class="text-nowrap"><a class="btn btn-primary btn-sm" href="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&amp;page=systems&amp;mode=manage&amp;action=edit&amp;s=<?php echo $_smarty_tpl->tpl_vars['systemId']->value;?>
" role="button">Bearbeiten</a>
				<button type="button" class="btn btn-danger btn-sm ml-1" data-toggle="modal" data-target="#deleteSystem" data-id="<?php echo $_smarty_tpl->tpl_vars['systemId']->value;?>
" data-name="<?php echo $_smarty_tpl->tpl_vars['system']->value['name'];?>
">Löschen</button></td>
		</tr>
		<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	</tbody>
</table>
<form class="form-inline float-right" method="POST" action="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&amp;page=systems&amp;mode=manage&amp;action=add">
	<label class="mr-2" for="newSystem">Neues System hinzufügen</label> <input type="text" class="form-control mr-sm-2" name="newSystem" id="newSystem" placeholder="Name des Systems">
	<button type="submit" class="btn btn-primary">Absenden</button>
</form>
<!-- Modal -->
<div class="modal fade" id="deleteSystem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">System löschen?</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				Soll das Systemn <span id="systemname"></span> wirklich gelöscht werden? Die zugehörigen Planeten werden dann ebenfalls gelöscht.
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Abbrechen</button>
				<button type="button" class="btn btn-danger" id="deletebutton">System löschen</button>
			</div>
		</div>
	</div>
</div>
<?php echo '<script'; ?>
>
$('#deleteSystem').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) // Button that triggered the modal
	  var id = button.data('id')
	  var name = button.data('name')
	  $("#systemname").text(name);
	  $('#deletebutton').attr(
				"onclick",
				"location.href = 'index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&page=systems&mode=manage&action=delete&s="
						+ id + "';")
	})
	<?php echo '</script'; ?>
>
<?php }
}
}
