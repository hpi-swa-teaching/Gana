searching
addDiscoveredHistoriansOf: aListItem

	^ (versionList select: [:each| aListItem = each]) first addAllHistorians: aListItem historians