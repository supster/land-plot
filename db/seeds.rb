# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#["Available", "Deposit", "Signed Contract", "Transfered"].each do |a|
#	status = Status.find_or_create_by_name(a)
#end

map = Map.find_or_create_by_name("Villa Nara")

Status.delete_all
Status.create(name: "Available", color: "av")
Status.create(name: "Deposit Received", color: "dr")
Status.create(name: "Contract Signed", color: "cs")
Status.create(name: "Transferred", color: "tr")

status_tr = Status.find_by_name("Transferred").id
status_av = Status.find_by_name("Available").id

map.plots.delete_all

j = 0
82.downto(74).each do |i|
	map.plots.create(code: "A#{i}", home_type: "V1", size: 100, 
									 row: 0, col: j, group_id: 0, status_id: status_av)
	j += 1
end

j = 0
66.downto(65).each do |i|
	map.plots.create(code: "A#{i}", home_type: "N1", size: 120, 
									 row: 0, col: j, group_id: 1, status_id: status_tr)
	j += 1
end

j = 0
(67..73).each do |i|
	map.plots.create(code: "A#{i}", home_type: "N1", size: 66, 
									 row: 0, col: j, group_id: 2, status_id: status_tr)
	j += 1
end

j = 0
64.downto(61).each do |i|
	map.plots.create(code: "A#{i}", home_type: "N1", size: 66, 
									 row: 1, col: j, group_id: 3, status_id: status_tr)
	j += 1	
end

j = 0
(54..60).each do |i|
	map.plots.create(code: "A#{i}", home_type: "V1", size: 66, 
									 row: 0, col: j, group_id: 4, status_id: status_tr)
	j += 1
end

j = 0
53.downto(47).each do |i|
	map.plots.create(code: "A#{i}", home_type: "V1", size: 66, 
									 row: 1, col: j, group_id: 5, status_id: status_tr)
	j += 1	
end

j = 0
(40..46).each do |i|
	map.plots.create(code: "A#{i}", home_type: "V1", size: 66, 
									 row: 0, col: j, group_id: 6, status_id: status_tr)
	j += 1
end

j = 0
39.downto(33).each do |i|
	map.plots.create(code: "A#{i}", home_type: "V1", size: 66, 
									 row: 1, col: j, group_id: 7, status_id: status_tr)
	j += 1	
end

j = 0
(27..32).each do |i|
	map.plots.create(code: "A#{i}", home_type: "V1", size: 66, 
									 row: 0, col: j, group_id: 8, status_id: status_tr)
	j += 1
end

j = 0
26.downto(21).each do |i|
	map.plots.create(code: "A#{i}", home_type: "V1", size: 66, 
									 row: 1, col: j, group_id: 9, status_id: status_tr)
	j += 1	
end

j = 0
(15..20).each do |i|
	map.plots.create(code: "A#{i}", home_type: "V1", size: 66, 
									 row: 0, col: j, group_id: 10, status_id: status_tr)
	j += 1
end

j = 0
14.downto(9).each do |i|
	map.plots.create(code: "A#{i}", home_type: "V1", size: 66, 
									 row: 1, col: j, group_id: 11, status_id: status_tr)
	j += 1	
end

j = 0
5.downto(4).each do |i|
	map.plots.create(code: "A#{i}", home_type: "D2", size: 120, 
									 row: 0, col: j, group_id: 12, status_id: status_tr)
	j += 1
end

j = 0
(6..8).each do |i|
	map.plots.create(code: "A#{i}", home_type: "D2", size: 66, 
									 row: 0, col: j, group_id: 13, status_id: status_tr)
	j += 1
end

j = 0
3.downto(1).each do |i|
	map.plots.create(code: "A#{i}", home_type: "D2", size: 66, 
									 row: 1, col: j, group_id: 14, status_id: status_tr)
	j += 1	
end

#G8
map.plots.create(code: "G8", home_type: "V2", size: 150, row: 0, col: j, group_id: 15, status_id: status_tr)


j = 0
7.downto(1).each do |i|
	map.plots.create(code: "G#{i}", home_type: "V2", size: 120, 
									 row: 0, col: j, group_id: 16, status_id: status_tr)
	j += 1	
end


j = 0
25.downto(19).each do |i|
	map.plots.create(code: "P#{i}", home_type: "T", size: 120, 
									 row: 1, col: j, group_id: 17, status_id: status_av)
	j += 1	
end

j = 0
18.downto(14).each do |i|
	map.plots.create(code: "P#{i}", home_type: "T", size: 120, 
									 row: 1, col: j, group_id: 18, status_id: status_av)
	j += 1	
end

j = 0
12.downto(7).each do |i|
	map.plots.create(code: "P#{i}", home_type: "T", size: 120, 
									 row: 0, col: j, group_id: 19, status_id: status_av)
	j += 1	
end

j = 0
6.downto(1).each do |i|
	map.plots.create(code: "P#{i}", home_type: "T", size: 120, 
									 row: 1, col: j, group_id: 20, status_id: status_av)
	j += 1	
end


