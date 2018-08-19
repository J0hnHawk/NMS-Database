<?php
/* Smarty version 3.1.32, created on 2018-08-19 09:48:45
  from 'E:\xampp\htdocs\NMS-Database\styles\bootstrap4\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5b7920dda376c2_32259248',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b5a130b06049698b5a6c750b8055cab81c4bbf36' => 
    array (
      0 => 'E:\\xampp\\htdocs\\NMS-Database\\styles\\bootstrap4\\index.tpl',
      1 => 1534625289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:navbar.tpl' => 1,
  ),
),false)) {
function content_5b7920dda376c2_32259248 (Smarty_Internal_Template $_smarty_tpl) {
?><!doctype html>
<html lang="de">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/images/favicon.ico">
<title>NMS Database</title>
<link href="styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/css/bootstrap.min.css" rel="stylesheet">
<link href="styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/css/custom.css" rel="stylesheet">
<?php echo '<script'; ?>
 src="styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/js/jquery.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="styles/<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
/js/bootstrap.bundle.min.js"><?php echo '</script'; ?>
>
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous"> -->
</head>
<body>
	<?php $_smarty_tpl->_subTemplateRender('file:navbar.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
	<main role="main">
	<div class="container">
		<?php $_smarty_tpl->_assignInScope('fullPathToTemplate', "./styles/".((string)$_smarty_tpl->tpl_vars['style']->value)."/".((string)$_smarty_tpl->tpl_vars['page']->value).".tpl");?> <?php if (file_exists($_smarty_tpl->tpl_vars['fullPathToTemplate']->value)) {?> <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['page']->value).".tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?> <?php } else { ?>
		<div class="starter-template">
			<h1>Fehler beim Seitenaufruf</h1>
			<p class="lead">
				Die Datei <strong>"<?php echo $_smarty_tpl->tpl_vars['page']->value;?>
"</strong> existiert nicht.
			</p>
		</div>
		<?php }?>
	</div>
	</main>
	<footer class="footer">
		<div class="container">
			<span class="text-muted">&copy; 2018 John Hawk</span>
		</div>
	</footer>
</body>
</html>
<?php }
}
