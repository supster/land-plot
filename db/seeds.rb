# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
map = Map.find_or_create_by_name("Villa Nara")

#group 1
j = 0
82.downto(74).each do |i|
	map.plots.create(code: "A#{i}", home_type: "V1", size: 100, 
									 row: 0, col: j, group_id: 0)
	j += 1
end

j = 0
6.downto(1).each do |i|
	map.plots.create(code: "P#{i}", home_type: "T", size: 120, 
									 row: 0, col: j, group_id: 12)
	j += 1	
end

j = 0
12.downto(7).each do |i|
	map.plots.create(code: "P#{i}", home_type: "T", size: 120, 
									 row: 0, col: j, group_id: 11)
	j += 1	
end
