{if isset($systemEdit)}
<h3>{if $action=='edit'}System bearbeiten{else}Neues System hinzufügen{/if}</h3>
<form class="mt-4" method="POST" action="index.php?galaxy={$galaxy}&amp;page=systems&amp;action=manage&amp;action={$action}">
	<div class="form-row">
		<div class="form-group col-md-8">
			<label for="inputEmail4">Name des Systems</label> <input type="text" class="form-control" id="inputEmail4" placeholder="Name des Systems" value="{$system.name}">
		</div>
		<div class="form-group col-md-4">
			<label for="inputPassword4">Dominate Lebensform</label><select id="inputState" class="form-control">
				<option value="null" {if $system.lifeformId==null}selected{/if}>Option auswählen</option> {foreach $lifeform as $lifeformId => $lifeformRow}
				<option value="{$lifeformId}" {if $system.lifeformId==$lifeformId}selected{/if}>{$lifeformRow.name}</option> {/foreach}
			</select>
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-md-4">
			<label for="inputCity">Wirtschaft</label> <select id="inputState" class="form-control">
				<option value="null" selected>Option auswählen</option> {foreach $economy as $economyId => $economyRow}
				<option value="{$economyId}" {if $system.economyId==$economyId}selected{/if}>{$economyRow.name}</option> {/foreach}
			</select>
		</div>
		<div class="form-group col-md-4">
			<label for="inputCity">Wohlstand</label> <select id="inputState" class="form-control">
				<option value="null" selected>Option auswählen</option> {foreach $wealth as $wealthId => $wealthRow}
				<option value="{$wealthId}" {if $system.wealthId==$wealthId}selected{/if}>{$wealthRow.name}</option> {/foreach}
			</select>
		</div>
		<div class="form-group col-md-4">
			<label for="inputCity">Konfliktstufe</label> <select id="inputState" class="form-control">
				<option value="null" selected>Option auswählen</option> {foreach $conflict as $conflictId => $conflictRow}
				<option value="{$conflictId}" {if $system.conflictId==$conflictId}selected{/if}>{$conflictRow.name}</option> {/foreach}
			</select>
		</div>
	</div>
	{if $action=='edit'}
	<table class="table table-hover table-sm">
		<thead class="thead-light">
			<tr>
				<th colspan="2" scope="col">Himmelskörper</th>
				<th scope="col">Biom</th>
				<th scope="col">Wetter</th>
				<th scope="col">Wächter</th>
				<th scope="col">Notizen</th>
			</tr>
		</thead>
		<tbody>
			{foreach $planets as $planetId => $planet}
			<tr>
				<td>{$planet.name}</td>
				<td>{if $planet.planetMoonId}Mond von {$planets[$planet.planetMoonId].name}{/if}</td>
				<td>{$planet.biomeId}</td>
				<td>{$planet.weatherId}</td>
				<td>{$planet.sentinelId}</td>
				<td>{$planet.notes|truncate}</td>
			</tr>
			{/foreach}
		</tbody>
	</table>
	{else}
	<div class="form-row">
		<div class="form-group col-md-4">
			<label for="planetAmount">Anzahl Planeten</label> <select id="planetAmount" class="form-control">
				<option selected>Option auswählen</option>
				<option>1 Planet</option>
				<option>2 Planeten</option>
				<option>3 Planeten</option>
				<option>4 Planeten</option>
				<option>5 Planeten</option>
				<option>6 Planeten</option>
			</select>
		</div>
		<div class="form-group col-md-4">
			<label for="moonAmount">Anzahl Monde</label> <select id="moonAmount" class="form-control">
				<option selected>Option auswählen</option>
				<option>1 Mond</option>
				<option>2 Monde</option>
				<option>3 Monde</option>
				<option>4 Monde</option>
				<option>5 Monde</option>
				<option>6 Monde</option>
			</select>
		</div>
		<div class="form-group col-md-4"></div>
	</div>
	{/if}
	<div class="form-group">
		<label for="inputAddress">Notizen</label>
		<textarea class="form-control" id="exampleFormControlTextarea1" rows="3">{$system.notes}</textarea>
	</div>
	<button type="submit" class="btn btn-primary float-right">Absenden</button>
	<button type="reset" class="btn btn-secondary">Zurücksetzen</button>
</form>
{else}
<table class="table table-hover table-sm">
	<thead class="thead-light">
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
		{foreach $systems as $systemId => $system}
		<tr>
			<th>{$system.name}</th>
			<td>{$lifeform[$system.lifeformId].name}</td>
			<td>{$economy[$system.economyId].name}</td>
			<td>{$wealth[$system.wealthId].name}</td>
			<td>{$conflict[$system.conflictId].name}</td>
			<td class="text-nowrap"><a class="btn btn-primary btn-sm" href="index.php?galaxy={$galaxy}&amp;page=systems&amp;mode=manage&amp;action=edit&amp;s={$systemId}" role="button">Bearbeiten</a>
				<button type="button" class="btn btn-danger btn-sm ml-1" data-toggle="modal" data-target="#deleteSystem" data-id="{$systemId}" data-name="{$system.name}">Löschen</button></td>
		</tr>
		{/foreach}
	</tbody>
</table>
<form class="form-inline float-right" method="POST" action="index.php?galaxy={$galaxy}&amp;page=systems&amp;mode=manage&amp;action=add">
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
<script>
$('#deleteSystem').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget) // Button that triggered the modal
	  var id = button.data('id')
	  var name = button.data('name')
	  $("#systemname").text(name);
	  $('#deletebutton').attr(
				"onclick",
				"location.href = 'index.php?galaxy={$galaxy}&amp;page=systems&amp;mode=manage&amp;action=delete&amp;s="
						+ id + "';")
	})
	</script>
{/if}
