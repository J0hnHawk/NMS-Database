<!doctype html>
<html lang="de">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="{$style}/images/favicon.ico">
<title>Startseite</title>
<link href="styles/{$style}/css/bootstrap.min.css" rel="stylesheet">
<link href="styles/{$style}/css/custom.css" rel="stylesheet">
<script src="styles/{$style}/js/jquery.min.js"></script>
<script src="styles/{$style}/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
</head>
<body>
	{include file='navbar.tpl'}
	<main role="main">
	<div class="container">
		{assign var="fullPathToTemplate" value="./styles/$style/$page.tpl"} {if file_exists($fullPathToTemplate)} {include file="$page.tpl"} {else}
		<div class="starter-template">
			<h1>Fehler beim Seitenaufruf</h1>
			<p class="lead">
				Die Datei <strong>"{$page}"</strong> existiert nicht.
			</p>
		</div>
		{/if}
	</div>
	</main>
	<footer class="footer">
		<div class="container">
			<span class="text-muted">&copy; 2018 John Hawk</span>
		</div>
	</footer>
</body>
</html>
