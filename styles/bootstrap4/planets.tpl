<table class="table table-hover table-sm">
	<thead class="thead-light">
		<tr>
			<th scope="col">Planet</th>
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