
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	<div class="container">
		<a class="navbar-brand" href="#">NMS Database</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{$galaxies.$galaxy.name} Galaxie</a>
					<div class="dropdown-menu" aria-labelledby="dropdown01">
						{foreach $galaxies as $galaxyId => $galaxy} <a class="dropdown-item" href="index.php?galaxy={$galaxyId}&amp;page={$page}">{$galaxy.name} Galaxie</a> {/foreach}
					</div></li>
				<li {if $page== 'systems'}class="nav-item active" {else}class="nav-item"{/if}><a class="nav-link" href="index.php?galaxy={$galaxy}&amp;page=systems">Systeme</span>
				</a></li>
				<li {if $page== 'planets'}class="nav-item active" {else}class="nav-item"{/if}><a class="nav-link" href="index.php?galaxy={$galaxy}&amp;page=planets">Planeten</a></li>
				<li {if $page== 'storage'}class="nav-item active" {else}class="nav-item"{/if}><a class="nav-link" href="index.php?galaxy={$galaxy}&amp;page=storage">Lager</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Suchbegriff" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Suchen</button>
			</form>
		</div>
	</div>
</nav>
