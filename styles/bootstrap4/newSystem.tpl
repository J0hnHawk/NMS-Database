<h1>Neues System hinzufügen</h1>
<form class="mt-4" method="POST" action="index.php?newSystem">
	<div class="form-row">
		<div class="form-group col-md-6">
			<label for="inputEmail4">Name des Systems</label> <input type="email" class="form-control" id="inputEmail4" placeholder="Name des Systems" value="{$newSystemName}">
		</div>
		<div class="form-group col-md-6">
			<label for="inputPassword4">Dominate Lebensform</label><select id="inputState" class="form-control">
				<option value="null" selected>Option auswählen</option>
				{foreach $lifeform as $lifeformId => $lifeformRow}
				<option value="{$lifeformId}">{$lifeformRow.name}</option>
				{/foreach}
			</select>
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-md-4">
			<label for="inputCity">Wirtschaft</label> <select id="inputState" class="form-control">
				<option value="null" selected>Option auswählen</option>
				{foreach $economy as $economyId => $economyRow}
				<option value="{$economyId}">{$economyRow.name}</option>
				{/foreach}
			</select>
		</div>
		<div class="form-group col-md-4">
			<label for="inputCity">Wohlstand</label> <select id="inputState" class="form-control">
				<option value="null" selected>Option auswählen</option>
				{foreach $wealth as $wealthId => $wealthRow}
				<option value="{$wealthId}">{$wealthRow.name}</option>
				{/foreach}
			</select>
		</div>
		<div class="form-group col-md-4">
			<label for="inputCity">Konfliktstufe</label> <select id="inputState" class="form-control">
				<option value="null" selected>Option auswählen</option>
				{foreach $conflict as $conflictId => $conflictRow}
				<option value="{$conflictId}">{$conflictRow.name}</option>
				{/foreach}
			</select>
		</div>
	</div>
		<div class="form-row">
		<div class="form-group col-md-4">
			<label for="inputCity">Anzahl Planeten</label> <select id="inputState" class="form-control">
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
			<label for="inputCity">Anzahl Monde</label> <select id="inputState" class="form-control">
				<option selected>Option auswählen</option>
				<option selected>Option auswählen</option>
				<option>1 Mond</option>
				<option>2 Monde</option>
				<option>3 Monde</option>
				<option>4 Monde</option>
				<option>5 Monde</option>
				<option>6 Monde</option>
			</select>
		</div>
		<div class="form-group col-md-4">
			
		</div>
	</div>
	
	<div class="form-group">
		<label for="inputAddress">Notizen</label>
		<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
	</div>
	<button type="submit" class="btn btn-primary float-right">Absenden</button><button type="reset" class="btn btn-secondary">Zurücksetzen</button>
</form>