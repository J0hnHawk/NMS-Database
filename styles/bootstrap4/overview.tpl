<h3>Übersicht</h3>
<div class="row">
	<div class="col-3">
		<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			{foreach $systems as $systemId => $system} <a {if $system@first}class="nav-link active" {else}class="nav-link" {/if} id="v-pills-{$systemId}-tab" data-toggle="pill" href="#v-pills-{$systemId}"
				role="tab" aria-controls="v-pills-{$systemId}">{$system.name}</a> {/foreach}
		</div>
	</div>
	<div class="col-9">
		<div class="tab-content" id="v-pills-tabContent">
			{foreach $systems as $systemId => $system}
			<div {if $system@first}class="tab-pane show active" {else}class="tab-pane fade" {/if} id="v-pills-{$systemId}" role="tabpanel" aria-labelledby="v-pills-{$systemId}-tab">
				<h3>{$system.name}</h3>
				<div class="row">
					<div class="col">
						<h4>Systemdaten</h4>
						<div class="row">
							<div class="col">
								<section class="clearfix">
									<img src="styles/{$style}/images/lifeform/{$lifeform[$system.lifeformId].name|regex_replace:'/[^a-zA-Z0-9]/i':''}.png" onerror="this.src='styles/{$style}/images/imgNotFound.png'" class="img-fluid float-left mr-3 mb-2" width="56px" height="56px">
									<p>
										<span class="text-secondary">Dominante Lebensform</span><br> <strong>{if $system.lifeformId!=null}{$lifeform[$system.lifeformId].name}{/if}</strong>
									</p>
								</section>
								<section class="clearfix">
									<img src="styles/{$style}/images/economy/{$economy[$system.economyId].type}.png" onerror="this.src='styles/{$style}/images/imgNotFound.png'" class="img-fluid float-left mr-3 mb-2" width="56px" height="56px">
									<p>
										<span class="text-secondary">Wirtschaft</span><br> <strong>{if $system.economyId!=null}{$economy[$system.economyId].name}{/if}{if $system.wealthId!=null} /
											{$wealth[$system.wealthId].name}{/if}</strong>
									</p>
								</section>
								<section class="clearfix">
									<img src="styles/{$style}/images/conflict/{$conflict[$system.conflictId].tier}.png" onerror="this.src='styles/{$style}/images/imgNotFound.png'" class="img-fluid float-left mr-3 mb-2" width="56px" height="56px">
									<p>
										<span class="text-secondary">Konfliktstufe</span><br> <strong>{if $system.conflictId!=null}{$conflict[$system.conflictId].name}{/if}</strong>
									</p>
								</section>
							</div>
						</div>
						<h4>Planeten</h4>
						<div class="row">
							<div class="col">
								{foreach $system.planets as $planetId => $planet}
								<section class="clearfix">
									<img src="styles/{$style}/images/{if $planet.planetMoonId}moon{else}planet{/if}.png" class="img-fluid float-left mr-3" width="32px" height="32px">
									<p class="my-1">
										<strong>{$planet.name}</strong><a class="btn btn-primary btn-sm float-right" href="index.php?galaxy={$galaxy}&amp;page=planets&amp;mode=manage&amp;action=edit&amp;p={$planetId}"
											role="button">Ansehen</a><!-- btn btn-primary btn-sm  -->
									</p>
								</section>
								{/foreach}
							</div>
						</div>
					</div>
					<div class="col">
						<h4>Ressourcen</h4>
						{foreach $system.resources as $commodityId => $planet}
						<section class="clearfix">
							<img src="styles/{$style}/images/resources/{$commodityId|string_format:"%03d"}.png" onerror="this.src='styles/{$style}/images/imgNotFound.png'" class="img-fluid float-left mr-3 mb-2" width="32px" height="32px">
							<p>
								<strong>{$resources[$commodityId].name}</strong>
							</p>
						</section>
						{/foreach}
					</div>
				</div>
			</div>
			{/foreach}
		</div>
	</div>
</div>