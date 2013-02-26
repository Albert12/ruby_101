lucky_tickets_start_number = 0
lucky_tickets_end_number = 999999
lucky_tickets_qty = 0
for counter in lucky_tickets_start_number..lucky_tickets_end_number do
	ticket_number = "%06d" % counter
	left, right  = 0, 0
	ticket_number[0..2].chars.map {|c| c.to_i}.each {|d| left+=d}
	ticket_number[3..5].chars.map {|c| c.to_i}.each {|d| right+=d}
		if left == right then
			lucky_tickets_qty +=1
		end
end
puts "lucky tickets quantity is " + lucky_tickets_qty.to_s
puts "quantity of lucky tickets is " + ("%.4f" % (100.0 * lucky_tickets_qty / (lucky_tickets_end_number + 1))) + "% of the total quantity of tickets"