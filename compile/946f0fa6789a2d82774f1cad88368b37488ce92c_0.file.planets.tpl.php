<?php
/* Smarty version 3.1.32, created on 2018-08-19 15:40:36
  from 'E:\xampp\htdocs\NMS-Database\styles\bootstrap4\planets.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5b7973548cba58_12660597',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '946f0fa6789a2d82774f1cad88368b37488ce92c' => 
    array (
      0 => 'E:\\xampp\\htdocs\\NMS-Database\\styles\\bootstrap4\\planets.tpl',
      1 => 1534686035,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5b7973548cba58_12660597 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'E:\\xampp\\htdocs\\NMS-Database\\include\\smarty\\plugins\\modifier.truncate.php','function'=>'smarty_modifier_truncate',),));
if (isset($_smarty_tpl->tpl_vars['planetEdit']->value)) {?>
<h3><?php if ($_smarty_tpl->tpl_vars['action']->value == 'edit') {?>Planet bearbeiten<?php } else { ?>Neuen Planeten oder Mond hinzufügen<?php }?></h3>
<form class="mt-4" method="POST" action="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&amp;page=planets&amp;action=manage&amp;action=edit">
	<input type="hidden" name="planetId" value="<?php echo $_smarty_tpl->tpl_vars['planet']->value['id'];?>
">
	<div class="form-row">
		<div class="form-group col">
			<label for="name">Name des Planeten oder Mondes</label> <input type="text" name="name" id="name" class="form-control"
				placeholder="Name des Planeten" value="<?php echo $_smarty_tpl->tpl_vars['planet']->value['name'];?>
">
		</div>
		<div class="form-group col">
			<label for="name">Wenn Mond, Planet des Mondes</label> <select name="planetMoonId" id="inputState" class="form-control">
				<option value="null" selected>ist kein Mond</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['planets']->value, 'planetRow', false, 'planetId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['planetId']->value => $_smarty_tpl->tpl_vars['planetRow']->value) {
?>
				<option value="<?php echo $_smarty_tpl->tpl_vars['planetId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['planet']->value['planetMoonId'] == $_smarty_tpl->tpl_vars['planetId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['planetRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</select>
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-6">
			<label for="name">System</label> <select name="systemId" id="inputState" class="form-control">
				<option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['systems']->value, 'systemRow', false, 'systemId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['systemId']->value => $_smarty_tpl->tpl_vars['systemRow']->value) {
?>
				<option value="<?php echo $_smarty_tpl->tpl_vars['systemId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['planet']->value['systemId'] == $_smarty_tpl->tpl_vars['systemId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['systemRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</select>
		</div>
		<div class="form-group col-md-3">
			<label for="portalCode">Portalcode</label><input type="text" name="portalCode" id="portalCode" class="form-control" placeholder="Portalcode"
				value="<?php echo $_smarty_tpl->tpl_vars['planet']->value['portalCode'];?>
">
		</div>
		<div class="form-group col-md-3">
			<label for="portalCode">Galaktische Adresse</label><input type="text" name="galacticAdress" id="galacticAdress" class="form-control"
				placeholder="0000:0000:0000:0000" value="<?php echo $_smarty_tpl->tpl_vars['planet']->value['galacticAdress'];?>
">
		</div>
	</div>
	<div class="form-row">
		<div class="col-6">
			<div class="form-row">
				<div class="form-group col">
					<label for="inputCity">Biom</label> <select name="biomeId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['biomes']->value, 'biomeRow', false, 'biomeId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['biomeId']->value => $_smarty_tpl->tpl_vars['biomeRow']->value) {
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['biomeId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['planet']->value['biomeId'] == $_smarty_tpl->tpl_vars['biomeId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['biomeRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					</select>
				</div>
				<div class="form-group col">
					<label for="inputCity">Wetter</label> <select name="weatherId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['weather']->value, 'weatherRow', false, 'weatherId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['weatherId']->value => $_smarty_tpl->tpl_vars['weatherRow']->value) {
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['weatherId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['planet']->value['weatherId'] == $_smarty_tpl->tpl_vars['weatherId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['weatherRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					</select>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col">
					<label for="inputCity">Rohstoffe</label> <select name="resourcesId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['resources']->value, 'resourcesRow', false, 'resourcesId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['resourcesId']->value => $_smarty_tpl->tpl_vars['resourcesRow']->value) {
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['resourcesId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['planet']->value['resourcesId'] == $_smarty_tpl->tpl_vars['resourcesId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['resourcesRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					</select>
				</div>
				<div class="form-group col">
					<label for="inputCity">Wächter</label> <select name="sentinelId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['sentinel']->value, 'sentinelRow', false, 'sentinelId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['sentinelId']->value => $_smarty_tpl->tpl_vars['sentinelRow']->value) {
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['sentinelId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['planet']->value['sentinelId'] == $_smarty_tpl->tpl_vars['sentinelId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['sentinelRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					</select>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col">
					<label for="inputCity">Flora</label> <select name="floraId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['flora']->value, 'floraRow', false, 'floraId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['floraId']->value => $_smarty_tpl->tpl_vars['floraRow']->value) {
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['floraId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['planet']->value['floraId'] == $_smarty_tpl->tpl_vars['floraId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['floraRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					</select>
				</div>
				<div class="form-group col">
					<label for="inputCity">Fauna</label> <select name="faunaId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['fauna']->value, 'faunaRow', false, 'faunaId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['faunaId']->value => $_smarty_tpl->tpl_vars['faunaRow']->value) {
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['faunaId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['planet']->value['faunaId'] == $_smarty_tpl->tpl_vars['faunaId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['faunaRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					</select>
				</div>
			</div>
		</div>
		<div class="col-4 offset-1">
			<div class="form-row">
				<div class="form-group col">
					<input type="hidden" name="count" value="<?php echo count($_smarty_tpl->tpl_vars['planet']->value['commodities'])+1;?>
"> <label for="commodities">Rohstoffe</label> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['planet']->value['commodities'], 'planetCommodity');
$_smarty_tpl->tpl_vars['planetCommodity']->iteration = 0;
$_smarty_tpl->tpl_vars['planetCommodity']->index = -1;
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['planetCommodity']->value) {
$_smarty_tpl->tpl_vars['planetCommodity']->iteration++;
$_smarty_tpl->tpl_vars['planetCommodity']->index++;
$_smarty_tpl->tpl_vars['planetCommodity']->first = !$_smarty_tpl->tpl_vars['planetCommodity']->index;
$__foreach_planetCommodity_8_saved = $_smarty_tpl->tpl_vars['planetCommodity'];
?>
					<div id="commodity<?php echo $_smarty_tpl->tpl_vars['planetCommodity']->iteration;?>
" class="input-group">
						<select class="form-control <?php if (!$_smarty_tpl->tpl_vars['planetCommodity']->first) {?>mt-3<?php }?>" name="commodity[]" id="commodity">
							<option value="" selected>Option auswählen</option><?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['commodities']->value, 'commodityRow', false, 'commodityId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['commodityId']->value => $_smarty_tpl->tpl_vars['commodityRow']->value) {
?>
							<option value="<?php echo $_smarty_tpl->tpl_vars['commodityId']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['planetCommodity']->value['commodityId'] == $_smarty_tpl->tpl_vars['commodityId']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['commodityRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
						</select>
						<div class="input-group-append">
							<?php if ($_smarty_tpl->tpl_vars['planetCommodity']->first) {?>
							<button id="add" class="btn btn-secondary" style="width: 40px">+</button>
							<?php } else { ?>
							<button onclick="$('#commodity' + <?php echo $_smarty_tpl->tpl_vars['planetCommodity']->iteration;?>
).remove()" class="btn btn-danger remove-me mt-3" style="width: 40px">-</button>
							<?php }?>
						</div>
					</div>
					<?php
$_smarty_tpl->tpl_vars['planetCommodity'] = $__foreach_planetCommodity_8_saved;
}
} else {
?>
					<div id="commodity1" class="input-group">
						<select class="form-control" name="commodity[]" id="commodity">
							<option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['commodities']->value, 'commodityRow', false, 'commodityId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['commodityId']->value => $_smarty_tpl->tpl_vars['commodityRow']->value) {
?>
							<option value="<?php echo $_smarty_tpl->tpl_vars['commodityId']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['commodityRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
						</select>
						<div class="input-group-append">
							<button id="add" class="btn btn-secondary" style="width: 40px">+</button>
						</div>
					</div>
					<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?> <span id="addbefore"></span>
				</div>
			</div>
			<?php echo '<script'; ?>
 type="text/javascript">
				$(document).ready(function(){
	    			var next = <?php echo count($_smarty_tpl->tpl_vars['planet']->value['commodities'])+1;?>
;
	    			$("#add").click(function(e){
	        			e.preventDefault();
	        			var newResource = "#commodity" + next;
	        			next = next + 1;
	        			var append = '<div id="commodity' + next + '" class="input-group"><select class="form-control mt-3" name="commodity[]" id="commodity"><option value="" selected>Option auswählen</option> <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['commodities']->value, 'commodityRow', false, 'commodityId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['commodityId']->value => $_smarty_tpl->tpl_vars['commodityRow']->value) {
?><option value="<?php echo $_smarty_tpl->tpl_vars['commodityId']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['commodityRow']->value['name'];?>
</option> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?></select><div class="input-group-append"><button id="r' + (next - 1) + '" class="btn btn-danger remove-me mt-3" style="width: 40px">-</button></div></div>';
	        			$("#addbefore").before(append);
	        			//$("#resource" + next).attr('data-source',$(newResource).attr('data-source'));
	        			$("#count").val(next);	        
		    			$('.remove-me').click(function(e){
	                		e.preventDefault();
	                		var fieldNum = parseInt(this.id.substr(1))+1 ;
	                		var fieldID = "#commodity" + fieldNum ;
	                		$(fieldID).remove();
	            		});   
	    			});	
				});
			<?php echo '</script'; ?>
>
		</div>
	</div>
	<div class="form-group">
		<label for="inputAddress">Notizen</label>
		<textarea name="notes" class="form-control" id="exampleFormControlTextarea1" rows="3"><?php echo $_smarty_tpl->tpl_vars['planet']->value['notes'];?>
</textarea>
	</div>
	<button type="submit" class="btn btn-primary float-right">Absenden</button>
	<button type="reset" class="btn btn-secondary">Zurücksetzen</button>
</form>
<?php } else { ?>
<table class="table table-hover table-sm">
	<thead class="thead-dark">
		<tr>
			<th scope="col">Planet / Mond</th>
			<th scope="col">System</th>
			<!-- <th scope="col">Biom</th> -->
			<th scope="col">Wetter</th>
			<th scope="col">Wächter</th>
			<th scope="col">Flora</th>
			<th scope="col">Fauna</th>
			<!-- <th scope="col">Notizen</th> -->
			<th scope="col">&nbsp;</th>
		</tr>
	</thead>
	<tbody>
		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['planets']->value, 'planet', false, 'planetId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['planetId']->value => $_smarty_tpl->tpl_vars['planet']->value) {
?>
		<tr>
			<th><?php echo $_smarty_tpl->tpl_vars['planet']->value['name'];?>
</th>
			<td><?php echo $_smarty_tpl->tpl_vars['systems']->value[$_smarty_tpl->tpl_vars['planet']->value['systemId']]['name'];?>
</td>
			<!-- <td><?php echo $_smarty_tpl->tpl_vars['planet']->value['biomeId'];?>
</td> -->
			<td><?php if ($_smarty_tpl->tpl_vars['planet']->value['weatherId'] != null) {
echo $_smarty_tpl->tpl_vars['weather']->value[$_smarty_tpl->tpl_vars['planet']->value['weatherId']]['name'];
}?></td>
			<td><?php if ($_smarty_tpl->tpl_vars['planet']->value['sentinelId'] != null) {
echo $_smarty_tpl->tpl_vars['sentinel']->value[$_smarty_tpl->tpl_vars['planet']->value['sentinelId']]['name'];
}?></td>
			<td><?php if ($_smarty_tpl->tpl_vars['planet']->value['floraId'] != null) {
echo $_smarty_tpl->tpl_vars['flora']->value[$_smarty_tpl->tpl_vars['planet']->value['floraId']]['name'];
}?></td>
			<td><?php if ($_smarty_tpl->tpl_vars['planet']->value['faunaId'] != null) {
echo $_smarty_tpl->tpl_vars['fauna']->value[$_smarty_tpl->tpl_vars['planet']->value['faunaId']]['name'];
}?></td>
			<!-- <td><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['planet']->value['notes']);?>
</td> -->
			<td class="text-nowrap"><a class="btn btn-primary btn-sm"
				href="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&amp;page=planets&amp;mode=manage&amp;action=edit&amp;p=<?php echo $_smarty_tpl->tpl_vars['planetId']->value;?>
" role="button">Bearbeiten</a>
				<button type="button" class="btn btn-danger btn-sm ml-1" data-toggle="modal" data-target="#deleteSystem" data-id="<?php echo $_smarty_tpl->tpl_vars['planetId']->value;?>
"
					data-name="<?php echo $_smarty_tpl->tpl_vars['planet']->value['name'];?>
">Löschen</button></td>
		</tr>
		<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	</tbody>
</table>
<form class="form-inline float-right" method="POST" action="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&amp;page=planets&amp;mode=manage&amp;action=add">
	<label class="mr-2" for="newSystem">Neuen Planeten hinzufügen</label> <input type="text" class="form-control mr-sm-2" name="newPlanet"
		placeholder="Name des Planeten">
	<button type="submit" class="btn btn-primary">Absenden</button>
</form>
<?php }
}
}
