<?php
/* Smarty version 3.1.32, created on 2018-08-19 09:48:45
  from 'E:\xampp\htdocs\NMS-Database\styles\bootstrap4\navbar.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5b7920dda69004_04850453',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '742d10dd0e18291043e81f617379860307c07150' => 
    array (
      0 => 'E:\\xampp\\htdocs\\NMS-Database\\styles\\bootstrap4\\navbar.tpl',
      1 => 1534625289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5b7920dda69004_04850453 (Smarty_Internal_Template $_smarty_tpl) {
?>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	<div class="container">
		<a class="navbar-brand" href="index.php">NMS Database</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $_smarty_tpl->tpl_vars['galaxies']->value[$_smarty_tpl->tpl_vars['galaxy']->value]['name'];?>
 Galaxie</a>
					<div class="dropdown-menu" aria-labelledby="dropdown01">
						<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['galaxies']->value, 'galaxy', false, 'galaxyId');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['galaxyId']->value => $_smarty_tpl->tpl_vars['galaxy']->value) {
?> <a class="dropdown-item" href="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxyId']->value;?>
&amp;page=<?php echo $_smarty_tpl->tpl_vars['page']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['galaxy']->value['name'];?>
 Galaxie</a> <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					</div></li>
				<li <?php if ($_smarty_tpl->tpl_vars['page']->value == 'overview') {?>class="nav-item active" <?php } else { ?>class="nav-item"<?php }?>><a class="nav-link" href="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&amp;page=overview">Übersicht</span>
				</a></li>
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dateneingabe</a>
					<div class="dropdown-menu" aria-labelledby="dropdown01">
						<a class="dropdown-item" href="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&amp;page=systems">Systeme</a> <a class="dropdown-item" href="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&amp;page=planets">Planeten</a>
					</div></li>
				<li <?php if ($_smarty_tpl->tpl_vars['page']->value == 'storage') {?>class="nav-item active" <?php } else { ?>class="nav-item"<?php }?>><a class="nav-link" href="index.php?galaxy=<?php echo $_smarty_tpl->tpl_vars['galaxy']->value;?>
&amp;page=storage">Lager</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Suchbegriff" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Suchen</button>
			</form>
		</div>
	</div>
</nav>
<?php }
}
