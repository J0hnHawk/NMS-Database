<table class="table table-hover">
	<thead class="thead-light">
		<tr>
			<th scope="col">System</th>
			<th scope="col">Fraktion</th>
			<th scope="col">Wirtschaft</th>
			<th scope="col">Wohlstand</th>
			<th scope="col">Konflikt</th>
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
		</tr>
		{/foreach}
	</tbody>
</table>