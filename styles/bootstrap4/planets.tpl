{if isset($planetEdit)}
<h3>{if $action=='edit'}Planet bearbeiten{else}Neuen Planeten oder Mond hinzufügen{/if}</h3>
<form class="mt-4" method="POST" action="index.php?galaxy={$galaxy}&amp;page=planets&amp;action=manage&amp;action=edit">
	<input type="hidden" name="planetId" value="{$planet.id}">
	<div class="form-row">
		<div class="form-group col-6">
			<label for="name">Name des Planeten oder Mondes</label> <input type="text" name="name" id="name" class="form-control" placeholder="Name des Planeten" value="{$planet.name}">
		</div>
		<div class="form-group col-6">
			<label for="name">Wenn Mond, Planet des Mondes</label> <select name="planetMoonId" id="inputState" class="form-control">
				<option value="" selected>Option auswählen</option> {foreach $planets as $planetId => $planetRow}
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
			<label for="portalCode">Galaktische Adresse</label><input type="text" name="galacticAdress" id="galacticAdress" class="form-control" placeholder="XXXX:0000:0000:0000:0000"
				value="{$planet.galacticAdress}">
		</div>
	</div>
	<div class="form-row">
		<div class="col-5">
			<div class="form-row">
				<div class="form-group col">
					<label for="inputCity">Biom</label> <select name="biomeId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> {foreach $biomes as $biomeId => $biomeRow}
						<option value="{$biomeId}" {if $planet.biomeId==$biomeId}selected{/if}>{$biomeRow.name}</option> {/foreach}
					</select>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col">
					<label for="inputCity">Wetter</label> <select name="weatherID" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> {foreach $weather as $weatherId => $weatherRow}
						<option value="{$weatherId}" {if $planet.weatherId==$weatherId}selected{/if}>{$weatherRow.name}</option> {/foreach}
					</select>
				</div>
			</div>
			<div class="form-row">
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
						<option value="" selected>Option auswählen</option> {foreach $faunaFlora as $faunaFloraId => $faunaFloraRow}
						<option value="{$faunaFloraId}" {if $planet.floraId==$faunaFloraId}selected{/if}>{$faunaFloraRow.name}</option> {/foreach}
					</select>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col">
					<label for="inputCity">Fauna</label> <select name="faunaId" id="inputState" class="form-control">
						<option value="" selected>Option auswählen</option> {foreach $faunaFlora as $faunaFloraId => $faunaFloraRow}
						<option value="{$faunaFloraId}" {if $planet.faunaId==$faunaFloraId}selected{/if}>{$faunaFloraRow.name}</option> {/foreach}
					</select>
				</div>
			</div>
		</div>
		<div class="col-4 offset-1">
			<div class="form-row">
				<div class="form-group col">
					<input type="hidden" name="count" value="1"> <label for="resources">Rohstoffe</label>
					<div id="ressource1" class="input-group">
						<select class="form-control" name="ressource[]" id="resources">
							<option value="" selected>Option auswählen</option> {foreach $ressources as $ressourcesId => $ressourcesRow}
							<option value="{$ressourcesId}">{$ressourcesRow.name}</option> {/foreach}
						</select>
						<div class="input-group-append">
							<button id="add" class="btn btn-secondary" style="width: 40px">+</button>
						</div>
					</div>
					<span id="addbefore"></span>
				</div>
			</div>
			<script type="text/javascript">
				$(document).ready(function(){
	    			var next = 1;
	    			$("#add").click(function(e){
	        			e.preventDefault();
	        			var newplanet = "#planet" + next;
	        			next = next + 1;
	        			var append = '<div id="ressource' + next + '" class="input-group"><select class="form-control mt-3" name="ressource[]" id="resources"><option value="" selected>Option auswählen</option> {foreach $ressources as $ressourcesId => $ressourcesRow}<option value="{$ressourcesId}">{$ressourcesRow.name}</option> {/foreach}</select><div class="input-group-append"><button id="r' + (next - 1) + '" class="btn btn-danger remove-me mt-3" style="width: 40px">-</button></div></div>';
	        			$("#addbefore").before(append);
	        			$("#ressource" + next).attr('data-source',$(newplanet).attr('data-source'));
	        			$("#count").val(next);	        
	            		$('.remove-me').click(function(e){
	                		e.preventDefault();
	                		var fieldNum = parseInt(this.id.substr(1))+1 ;
	                		var fieldID = "#ressource" + fieldNum ;
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
<table class="table table-hover table-sm">
	<thead class="thead-light">
		<tr>
			<th scope="col">Planet / Mond</th>
			<th scope="col">System</th>
			<th scope="col">Biom</th>
			<th scope="col">Wetter</th>
			<th scope="col">Wächter</th>
			<th scope="col">Notizen</th>
		</tr>
	</thead>
	<tbody>
		{foreach $planets as $planetId => $planet}
		<tr>
			<th>{$planet.name}</th>
			<td>{$systems[$planet.systemId].name}</td>
			<td>{$planet.biomeId}</td>
			<td>{$planet.weatherId}</td>
			<td>{$planet.sentinelId}</td>
			<td>{$planet.notes|truncate}</td>
		</tr>
		{/foreach}
	</tbody>
</table>
<form class="form-inline float-right" method="POST" action="index.php?galaxy={$galaxy}&amp;page=planets&amp;mode=manage&amp;action=add">
	<label class="mr-2" for="newSystem">Neuen Planeten hinzufügen</label> <input type="text" class="form-control mr-sm-2" name="newPlanet" placeholder="Name des Planeten">
	<button type="submit" class="btn btn-primary">Absenden</button>
</form>
{/if}
