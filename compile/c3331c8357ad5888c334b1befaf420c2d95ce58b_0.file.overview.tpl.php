<?php
/* Smarty version 3.1.32, created on 2018-08-19 14:23:43
  from 'E:\xampp\htdocs\NMS-Database\styles\bootstrap4\overview.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5b79614f4517c9_50269727',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c3331c8357ad5888c334b1befaf420c2d95ce58b' => 
    array (
      0 => 'E:\\xampp\\htdocs\\NMS-Database\\styles\\bootstrap4\\overview.tpl',
      1 => 1534681421,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5b79614f4517c9_50269727 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'E:\\xampp\\htdocs\\NMS-Database\\include\\smarty\\plugins\\modifier.regex_replace.php','function'=>'smarty_modifier_regex_replace',),));
?><h3>Übersicht</h3>
<div class="row">
	<div class="col-3">
		<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['systems']->value, 'system', false, 'systemId');
$_smarty_tpl->tpl_vars['system']->index = -1;
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['systemId']->value => $_smarty_tpl->tpl_vars['system']->value) {
$_smarty_tpl->tpl_vars['system']->index++;
$_smarty_tpl->tpl_vars['system']->first = !$_smarty_tpl->tpl_vars['system']->index;
$__foreach_system_0_saved = $_smarty_tpl->tpl_vars['system'];
?> <a <?php if ($_smarty_tpl->tpl_vars['system']->first) {?>class="nav-link active" <?php } else { ?>class="nav-link" <?php }?> id="v-pills-<?php echo $_smarty_tpl->tpl_vars['systemId']->value;?>
-tab" data-toggle="pill" href="#v-pills-<?php echo $_smarty_tpl->tpl_vars['systemId']->value;?>
"
				role="tab" aria-controls="v-pills-<?php echo $_smarty_tpl->tpl_vars['systemId']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['system']->value['name'];?>
</a> <?php
$_smarty_tpl->tpl_vars['system'] = $__foreach_system_0_saved;
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
		</div>
	</div>
	<div class="col-9">
		<div class="tab-content" id="v-pills-tabContent">
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['systems']->value, 'system', false, 'systemId');
$_smarty_tpl->tpl_vars['system']->index = -1;
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['systemId']->value => $_smarty_tpl->tpl_vars['system']->value) {
$_smarty_tpl->tpl_vars['system']->index++;
$_smarty_tpl->tpl_vars['system']->first = !$_smarty_tpl->tpl_vars['system']->index;
$__foreach_system_1_saved = $_smarty_tpl->tpl_vars['system'];
?>
			<div <?php if ($_smarty_tpl->tpl_vars['system']->first) {?>class="tab-pane show active" <?php } else { ?>class="tab-pane fade" <?php }?> id="v-pills-<?php echo $_smarty_tpl->tpl_vars['systemId']->value;?>
" role="tabpanel" aria-labelledby="v-pills-<?php echo $_smarty_tpl->tpl_vars['systemId']->value;?>
-tab">
				<h3><?php echo $_smarty_tpl->tpl_vars['system']->value['name'];?>
</h3>
				<div class="row">
					<div class="col">
						<h4>Systemdaten</h4>
						<div class="row">
							<div class="col">
								<section class="clearfix">
									<img src="styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/images/lifeform/<?php echo smarty_modifier_regex_replace($_smarty_tpl->tpl_vars['lifeform']->value[$_smarty_tpl->tpl_vars['system']->value['lifeformId']]['name'],'/[^a-zA-Z0-9]/i','');?>
.png" onerror="this.src='styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/images/imgNotFound.png'" class="img-fluid float-left mr-3 mb-2" width="56px" height="56px">
									<p>
										<span class="text-secondary">Dominante Lebensform</span><br> <strong><?php if ($_smarty_tpl->tpl_vars['system']->value['lifeformId'] != null) {
echo $_smarty_tpl->tpl_vars['lifeform']->value[$_smarty_tpl->tpl_vars['system']->value['lifeformId']]['name'];
}?></strong>
									</p>
								</section>
								<section class="clearfix">
									<img src="styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/images/economy/<?php echo $_smarty_tpl->tpl_vars['economy']->value[$_smarty_tpl->tpl_vars['system']->value['economyId']]['type'];?>
.png" onerror="this.src='styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/images/imgNotFound.png'" class="img-fluid float-left mr-3 mb-2" width="56px" height="56px">
									<p>
										<span class="text-secondary">Wirtschaft</span><br> <strong><?php if ($_smarty_tpl->tpl_vars['system']->value['economyId'] != null) {
echo $_smarty_tpl->tpl_vars['economy']->value[$_smarty_tpl->tpl_vars['system']->value['economyId']]['name'];
}
if ($_smarty_tpl->tpl_vars['system']->value['wealthId'] != null) {?> /
											<?php echo $_smarty_tpl->tpl_vars['wealth']->value[$_smarty_tpl->tpl_vars['system']->value['wealthId']]['name'];
}?></strong>
									</p>
								</section>
								<section class="clearfix">
									<img src="styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/images/conflict/<?php echo $_smarty_tpl->tpl_vars['conflict']->value[$_smarty_tpl->tpl_vars['system']->value['conflictId']]['tier'];?>
.png" onerror="this.src='styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/images/imgNotFound.png'" class="img-fluid float-left mr-3 mb-2" width="56px" height="56px">
									<p>
										<span class="text-secondary">Konfliktstufe</span><br> <strong><?php if ($_smarty_tpl->tpl_vars['system']->value['conflictId'] != null) {
echo $_smarty_tpl->tpl_vars['conflict']->value[$_smarty_tpl->tpl_vars['system']->value['conflictId']]['name'];
}?></strong>
									</p>
								</section>
							</div>
						</div>
						<h4>Planeten</h4>
						<div class="row">
							<div class="col">
								<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['system']->value['planets'], 'planet', false, 'planetId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['planetId']->value => $_smarty_tpl->tpl_vars['planet']->value) {
?>
								<section class="clearfix">
									<img src="styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/images/<?php if ($_smarty_tpl->tpl_vars['planet']->value['planetMoonId']) {?>moon<?php } else { ?>planet<?php }?>.png" class="img-fluid float-left mr-3" width="32px" height="32px">
									<p class="my-1">
										<strong><?php echo $_smarty_tpl->tpl_vars['planet']->value['name'];?>
</strong><a class="btn btn-primary btn-sm float-right" href="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&amp;page=planets&amp;mode=manage&amp;action=edit&amp;p=<?php echo $_smarty_tpl->tpl_vars['planetId']->value;?>
"
											role="button">Ansehen</a><!-- btn btn-primary btn-sm  -->
									</p>
								</section>
								<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
							</div>
						</div>
					</div>
					<div class="col">
						<h4>Ressourcen</h4>
						<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['system']->value['resources'], 'planet', false, 'commodityId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['commodityId']->value => $_smarty_tpl->tpl_vars['planet']->value) {
?>
						<section class="clearfix">
							<img src="styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/images/resources/<?php echo sprintf("%03d",$_smarty_tpl->tpl_vars['commodityId']->value);?>
.png" onerror="this.src='styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/images/imgNotFound.png'" class="img-fluid float-left mr-3 mb-2" width="32px" height="32px">
							<p>
								<strong><?php echo $_smarty_tpl->tpl_vars['resources']->value[$_smarty_tpl->tpl_vars['commodityId']->value]['name'];?>
</strong>
							</p>
						</section>
						<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					</div>
				</div>
			</div>
			<?php
$_smarty_tpl->tpl_vars['system'] = $__foreach_system_1_saved;
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
		</div>
	</div>
</div><?php }
}
