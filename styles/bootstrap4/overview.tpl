<h3>Übersicht</h3>
<ul class="nav nav-pills nav-stacked">
  <li class="active"><a href="#">Home</a></li>
  <li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu 1
    <span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="#">Submenu 1-1</a></li>
      <li><a href="#">Submenu 1-2</a></li>
      <li><a href="#">Submenu 1-3</a></li>
    </ul>
  </li>
  <li><a href="#">Menu 2</a></li>
  <li><a href="#">Menu 3</a></li>
</ul>
<div class="row">
	<div class="col-3">
		<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			{foreach $systems as $systemId => $system} <a {if $system@first}class="nav-link active" {else}class="nav-link" {/if} id="v-pills-{$systemId}-tab" data-toggle="pill" href="#v-pills-{$systemId}"
				role="tab" aria-controls="v-pills-{$systemId}">{$system.name}</a>
			<div class="nav flex-column nav-pills ml-5" id="v-pills-tab" role="tablist" aria-orientation="vertical">
				<a class="nav-link" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1"
				role="tab" aria-controls="v-pills-1">Testplanet</a>
			</div>
			{/foreach}
		</div>
	</div>
	<div class="col-9">
		<div class="tab-content" id="v-pills-tabContent">
			{foreach $systems as $systemId => $system}
			<div {if $system@first}class="tab-pane fade show active" {else}class="tab-pane fade" {/if} id="v-pills-{$systemId}" role="tabpanel" aria-labelledby="v-pills-{$systemId}-tab">
				<h3>{$system.name}</h3>
			</div>
			{/foreach}
		</div>
	</div>
</div>