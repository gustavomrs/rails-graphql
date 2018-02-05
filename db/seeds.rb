unactived_organzation = Organization.create(name: 'unactived organization',
  purpose: 'change some critical social situation', active: false)

track_org = Organization.create(name: 'Trackmob',
  purpose: "Help NGO's to change the world", active: true)

Donor.create(name: 'Rick', gender: 'male', organization: track_org)
Donor.create(name: 'Morty', gender: 'male', organization: track_org)
Donor.create(name: 'Summer', gender: 'female', organization: track_org)
Donor.create(name: 'Beth', gender: 'female', organization: unactived_organzation)
