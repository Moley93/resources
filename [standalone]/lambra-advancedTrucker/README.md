INSTALLATION


You have to set this metadata into your qb-core/server/player.lua around line 63 
below "PlayerData.metadata = PlayerData.metadata or {}"


Line to add:

PlayerData.metadata['lambratrucker'] = PlayerData.metadata['lambratrucker'] or {
        ['level'] = 0,
        ['distance'] = 0,
        ['pristine'] = 0
}