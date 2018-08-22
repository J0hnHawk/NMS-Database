{if isset($planetEdit)}
<h3>{if $action=='edit'}Planet bearbeiten{else}Neuen Planeten oder Mond hinzufügen{/if}</h3>
<form class="mt-4" method="POST" action="index.php?galaxy={$galaxy}&amp;page=planets&amp;action=manage&amp;action=edit">
	<input type="hidden" name="planetId" value="{$planet.id}">
	<div class="form-row">
		<div class="form-group col">
			<label for="name">Name des Planeten oder Mondes</label> <input type="text" name="name" id="name" class="form-control" placeholder="Name des Planeten" value="{$planet.name}">
		</div>
		<div class="form-group col">
			<label for="name">Wenn Mond, Planet des Mondes</label> <select name="planetMoonId" id="inputState" class="form-control">
				<option value="null" selected>ist kein Mond</option> {foreach $planets as $planetId => $planetRow}
				<option value="{$planetId}" {if $planet.planetMoonId==$planetId}selected{/if}>{$planetRow.name}</option> {/foreach}
			</select>
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-6">
			<label for="name">System</label> <select name="systemId" id="inputState" class="form-control">
				<option value="" selected>Option auswählen</option> {foreach $systems as $systemId => $systemRow}
				<option value="{$systemId}" {if $planet.systemId==$systemId}selected{/if}>{$systemRow.name}</option> {/foreach}
			</select>
		</div>
		<div class="form-group col-md-3">
			<label for="portalCode">Portalcode</label><input type="text" name="portalCode" id="portalCode" class="form-control" placeholder="Portalcode" value="{$planet.portalCode}">
		</div>
		<div class="form-group col-md-3">
			<label for="portalCode">Galaktische Adresse</label><input type="text" name="galacticAdress" id="galacticAdress" class="form-control" placeholder="0000:0000:0000:0000"
				value="{$planet.galacticAdress}">
		</div>
	</div>
	<div class="form-row">
		<div class="col-6">
			<div class="form-row">
				<div class="form-group col">
					<label for="inputCity">Biom</label> <select name="biomeId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> {foreach $biomes as $biomeId => $biomeRow}
						<option value="{$biomeId}" {if $planet.biomeId==$biomeId}selected{/if}>{$biomeRow.name}</option> {/foreach}
					</select>
				</div>
				<div class="form-group col">
					<label for="inputCity">Wetter</label> <select name="weatherId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> {foreach $weather as $weatherId => $weatherRow}
						<option value="{$weatherId}" {if $planet.weatherId==$weatherId}selected{/if}>{$weatherRow.name}</option> {/foreach}
					</select>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col">
					<label for="inputCity">Rohstoffe</label> <select name="resourcesId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> {foreach $resources as $resourcesId => $resourcesRow}
						<option value="{$resourcesId}" {if $planet.resourcesId==$resourcesId}selected{/if}>{$resourcesRow.name}</option> {/foreach}
					</select>
				</div>
				<div class="form-group col">
					<label for="inputCity">Wächter</label> <select name="sentinelId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> {foreach $sentinel as $sentinelId => $sentinelRow}
						<option value="{$sentinelId}" {if $planet.sentinelId==$sentinelId}selected{/if}>{$sentinelRow.name}</option> {/foreach}
					</select>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col">
					<label for="inputCity">Flora</label> <select name="floraId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> {foreach $flora as $floraId => $floraRow}
						<option value="{$floraId}" {if $planet.floraId==$floraId}selected{/if}>{$floraRow.name}</option> {/foreach}
					</select>
				</div>
				<div class="form-group col">
					<label for="inputCity">Fauna</label> <select name="faunaId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> {foreach $fauna as $faunaId => $faunaRow}
						<option value="{$faunaId}" {if $planet.faunaId==$faunaId}selected{/if}>{$faunaRow.name}</option> {/foreach}
					</select>
				</div>
			</div>
		</div>
		<div class="col-4 offset-1">
			<div class="form-row">
				<div class="form-group col">
					<input type="hidden" name="count" value="{$planet.commodities|@count+1}"> <label for="commodities">Rohstoffe</label> {foreach $planet.commodities as $planetCommodity}
					<div id="commodity{$planetCommodity@iteration}" class="input-group">
						<select class="form-control {if !$planetCommodity@first}mt-3{/if}" name="commodity[]" id="commodity">
							<option value="" selected>Option auswählen</option>{foreach $commodities as $commodityId => $commodityRow}
							<option value="{$commodityId}" {if $planetCommodity.commodityId==$commodityId}selected{/if}>{$commodityRow.name}</option> {/foreach}
						</select>
						<div class="input-group-append">
							{if $planetCommodity@first}
							<button id="add" class="btn btn-secondary" style="width: 40px">+</button>
							{else}
							<button onclick="$('#commodity' + {$planetCommodity@iteration}).remove()" class="btn btn-danger remove-me mt-3" style="width: 40px">-</button>
							{/if}
						</div>
					</div>
					{foreachelse}
					<div id="commodity1" class="input-group">
						<select class="form-control" name="commodity[]" id="commodity">
							<option value="" selected>Option auswählen</option> {foreach $commodities as $commodityId => $commodityRow}
							<option value="{$commodityId}">{$commodityRow.name}</option> {/foreach}
						</select>
						<div class="input-group-append">
							<button id="add" class="btn btn-secondary" style="width: 40px">+</button>
						</div>
					</div>
					{/foreach} <span id="addbefore"></span>
				</div>
			</div>
			<script type="text/javascript">
				$(document).ready(function(){
	    			var next = {$planet.commodities|@count +1};
	    			$("#add").click(function(e){
	        			e.preventDefault();
	        			var newResource = "#commodity" + next;
	        			next = next + 1;
	        			var append = '<div id="commodity' + next + '" class="input-group"><select class="form-control mt-3" name="commodity[]" id="commodity"><option value="" selected>Option auswählen</option> {foreach $commodities as $commodityId => $commodityRow}<option value="{$commodityId}">{$commodityRow.name}</option> {/foreach}</select><div class="input-group-append"><button id="r' + (next - 1) + '" class="btn btn-danger remove-me mt-3" style="width: 40px">-</button></div></div>';
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
			</script>
		</div>
	</div>
	<div class="form-group">
		<label for="inputAddress">Notizen</label>
		<textarea name="notes" class="form-control" id="exampleFormControlTextarea1" rows="3">{$planet.notes}</textarea>
	</div>
	<button type="submit" class="btn btn-primary float-right">Absenden</button>
	<button type="reset" class="btn btn-secondary">Zurücksetzen</button>
</form>
{else}
<table id="table_planets" class="table table-hover table-sm">
	<thead class="thead-dark">
		<tr>
			<th scope="col">Planet / Mond</th>
			<th scope="col">System</th>
			<th scope="col">Biom</th>
			<th scope="col">Wetter</th>
			<th scope="col">Wächter</th>
			<th scope="col">Flora</th>
			<th scope="col">Fauna</th>
			<th scope="col">Notizen</th>
			<th scope="col">&nbsp;</th>
		</tr>
	</thead>
	<tbody>
		{foreach $planets as $planetId => $planet}
		<tr>
			<th class="text-nowrap">{$planet.name}</th>
			<td class="text-nowrap">{$systems[$planet.systemId].name}</td>
			<td class="text-nowrap">{if $planet.biomeId!=null}{$biomes[$planet.biomeId].name}{/if}</td>
			<td class="text-nowrap">{if $planet.weatherId!=null}{$weather[$planet.weatherId].name}{/if}</td>
			<td class="text-nowrap">{if $planet.sentinelId!=null}{$sentinel[$planet.sentinelId].name}{/if}</td>
			<td class="text-nowrap">{if $planet.floraId!=null}{$flora[$planet.floraId].name}{/if}</td>
			<td class="text-nowrap">{if $planet.faunaId!=null}{$fauna[$planet.faunaId].name}{/if}</td>
			<td class="text-nowrap">{$planet.notes|truncate}</td>
			<td class="text-nowrap"><a class="btn btn-primary btn-sm" href="index.php?galaxy={$galaxy}&amp;page=planets&amp;mode=manage&amp;action=edit&amp;p={$planetId}" role="button">Bearbeiten</a>
				<button type="button" class="btn btn-danger btn-sm ml-1" data-toggle="modal" data-target="#deleteSystem" data-id="{$planetId}" data-name="{$planet.name}">Löschen</button></td>
		</tr>
		{/foreach}
	</tbody>
</table>
<script>
	{literal}
	var rows = parseInt(($( window ).height() - 210) / 46)
	var table = $('#table_planets').DataTable({
    	pageResize: true,
    	"pageLength": rows,
    	"dom": "ftp",
    	"language": {
    		"sEmptyTable":      "Keine Daten in der Tabelle vorhanden",
    		"sInfo":            "_START_ bis _END_ von _TOTAL_ Einträgen",
    		"sInfoEmpty":       "Keine Daten vorhanden",
    		"sInfoFiltered":    "(gefiltert von _MAX_ Einträgen)",
    		"sInfoPostFix":     "",
    		"sInfoThousands":   ".",
    		"sLengthMenu":      "_MENU_ Einträge anzeigen",
    		"sLoadingRecords":  "Wird geladen ..",
    		"sProcessing":      "Bitte warten ..",
    		"sSearch":          "Suchen",
    		"sZeroRecords":     "Keine Einträge vorhanden",
    		"oPaginate": {
    			"sFirst":       "Erste",
    		    "sPrevious":    "Zurück",
    		    "sNext":        "Nächste",
    		    "sLast":        "Letzte"
    		}
		}
    });	
	{/literal}
	{if isset($lastPlanet)}
	table.page.jumpToData( "{$lastPlanet}", 0 );
	{/if}
</script>
<form class="form-inline float-right" method="POST" action="index.php?galaxy={$galaxy}&amp;page=planets&amp;mode=manage&amp;action=add">
	<label class="mr-2" for="newSystem">Neuen Planeten hinzufügen</label> <input type="text" class="form-control mr-sm-2" name="newPlanet" placeholder="Name des Planeten">
	<button type="submit" class="btn btn-primary">Absenden</button>
</form>
{/if}
