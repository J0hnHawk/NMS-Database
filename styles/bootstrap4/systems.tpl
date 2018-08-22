{if isset($systemEdit)}
<h3>{if $action=='edit'}System bearbeiten{else}Neues System hinzufügen{/if}</h3>
<form class="mt-4" method="POST" action="index.php?galaxy={$galaxy}&amp;page=systems&amp;action=manage&amp;action=edit">
	<input type="hidden" name="systemId" value="{$system.id}"><input type="hidden" name="galaxyId" value="{$system.galaxyId}">
	<div class="form-row">
		<div class="form-group col-6">
			<label for="inputEmail4">Name des Systems</label> <input type="text" name="name" class="form-control" id="inputEmail4"
				placeholder="Name des Systems" value="{$system.name}">
		</div>
		<div class="form-group col-4 ml-auto">
			<label for="inputPassword4">Dominate Lebensform</label><select name="lifeformId" id="inputState" class="form-control">
				<option value="" {if $system.lifeformId==null}selected{/if}>Option auswählen</option> {foreach $lifeform as $lifeformId => $lifeformRow}
				<option value="{$lifeformId}" {if $system.lifeformId==$lifeformId}selected{/if}>{$lifeformRow.name}</option> {/foreach}
			</select>
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-md-4">
			<label for="inputCity">Wirtschaft</label> <select name="economyId" id="inputState" class="form-control">
				<option value="" selected>Option auswählen</option> {foreach $economy as $economyId => $economyRow}
				<option value="{$economyId}" {if $system.economyId==$economyId}selected{/if}>{$economyRow.name}</option> {/foreach}
			</select>
		</div>
		<div class="form-group col-md-4">
			<label for="inputCity">Wohlstand</label> <select name="wealthId" id="inputState" class="form-control">
				<option value="" selected>Option auswählen</option> {foreach $wealth as $wealthId => $wealthRow}
				<option value="{$wealthId}" {if $system.wealthId==$wealthId}selected{/if}>{$wealthRow.name}</option> {/foreach}
			</select>
		</div>
		<div class="form-group col-md-4">
			<label for="inputCity">Konfliktstufe</label> <select name="conflictId" id="inputState" class="form-control">
				<option value="" selected>Option auswählen</option> {foreach $conflict as $conflictId => $conflictRow}
				<option value="{$conflictId}" {if $system.conflictId==$conflictId}selected{/if}>{$conflictRow.name}</option> {/foreach}
			</select>
		</div>
	</div>
	{if $action=='edit'}
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
	<script type="text/javascript">
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
	});	</script>
	{/if}
	<div class="form-group">
		<label for="inputAddress">Notizen</label>
		<textarea name="notes" class="form-control" id="exampleFormControlTextarea1" rows="3">{$system.notes}</textarea>
	</div>
	<button type="submit" class="btn btn-primary float-right">Absenden</button>
	<button type="reset" class="btn btn-secondary">Zurücksetzen</button>
</form>
{else}
<table id="table_systems" class="table table-hover table-sm">
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
		{$color[1]='class="text-danger align-middle"'}{$color[-5]='class="align-middle"'}{$color[2]='class="text-warning align-middle"'}{$color[3]='class="text-success align-middle"'} {foreach $systems as $systemId => $system}
		<tr>
			<th class="align-middle">{$system.name}</th> {if $system.lifeformId!=null}
			<td class="align-middle"><img src="styles/{$style}/images/lifeform/{$lifeform[$system.lifeformId].name|regex_replace:'/[^a-zA-Z0-9]/i':''}.png" onerror="this.src='styles/{$style}/images/imgNotFound.png'"
				class="mr-3 " width="20px" height="20px">{$lifeform[$system.lifeformId].name}</td>{else}
			<td>&nbsp;</td>{/if} {if $system.economyId!=null && $system.wealthId!=null}
			<td
				{$color[$wealth[$system.wealthId].wealth]}
			<td {$color[$wealth[$system.wealthId].wealth]} data-order="{$economy[$system.economyId].type}{$economy[$system.economyId].name}">
				<img src="styles/{$style}/images/economy/{$economy[$system.economyId].typeName}.png" onerror="this.src='styles/{$style}/images/imgNotFound.png'"
				class="mr-3" width="20px" height="20px">{$economy[$system.economyId].name}
			</td>
				<td {$color[$wealth[$system.wealthId].wealth]} data-order="{$wealth[$system.wealthId].wealth}{$wealth[$system.wealthId].name}">
				{$wealth[$system.wealthId].name}
			</td>
			{else}<td class="align-middle" data-order="9"><img src="styles/{$style}/images/economy/{$economy[$system.economyId].typeName}.png" onerror="this.src='styles/{$style}/images/imgNotFound.png'"
				class="mr-3" width="20px" height="20px">{$economy[$system.economyId].name}</td>
				<td>&nbsp;</td>{/if}
			{if $system.conflictId!=null}
				<td {$color[4-$conflict[$system.conflictId].conflictLevel]} data-order="{$conflict[$system.conflictId].conflictLevel}{$conflict[$system.conflictId].name}"><img src="styles/{$style}/images/conflict/{$conflict[$system.conflictId].tier}.png" onerror="this.src='styles/{$style}/images/imgNotFound.png'" class="img-fluid float-left mr-3 mb-2"
										width="20px" height="20px">{$conflict[$system.conflictId].name}</td>
			{else}<td>&nbsp;</td>{/if}
			<td class="text-nowrap"><a class="btn btn-primary btn-sm"
				href="index.php?galaxy={$galaxy}&amp;page=systems&amp;mode=manage&amp;action=edit&amp;s={$systemId}" role="button">Bearbeiten</a>
				<button type="button" class="btn btn-danger btn-sm ml-1" data-toggle="modal" data-target="#deleteSystem" data-id="{$systemId}"
					data-name="{$system.name}">Löschen</button></td>
		
		</tr>
		{/foreach}
	</tbody>
</table>
<script>
	{literal}
	var rows = parseInt(($( window ).height() - 210) / 46)
	$(document).ready( function () {
    	$('#table_systems').DataTable({
    		"pageLength": rows,
    		"dom": '<"toolbar">ftp',
    		language: {
		        url: './styles/bootstrap4/js/German.json'
		    }
    	});
    	$("div.toolbar").html('<b>Custom tool bar! Text/images etc.</b>');
	} );	
	{/literal}
</script>
<form class="form-inline float-right" method="POST" action="index.php?galaxy={$galaxy}&amp;page=systems&amp;mode=manage&amp;action=add">
	<label class="mr-2" for="newSystem">Neues System hinzufügen</label> <input type="text" class="form-control mr-sm-2" name="newSystem" id="newSystem"
		placeholder="Name des Systems">
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
				"location.href = 'index.php?galaxy={$galaxy}&page=systems&mode=manage&action=delete&s="
						+ id + "';")
	})
	</script>
{/if}
