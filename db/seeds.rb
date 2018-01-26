@employee = Employee.create(email: "test@test.com", 
					password: "asdfasdf", 
					password_confirmation: "asdfasdf", 
					first_name: "Barry", 
					last_name: "Allen",
					phone: "4353596216")

puts "1 employee created"

AdminUser.create(email: "admin@test.com", 
				 password: "asdfasdf", 
				 password_confirmation: "asdfasdf",
				 first_name: "Admin", 
				 last_name: "Test",
				 phone: "4803515375")

puts "1 Admin created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))


puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content asdfasdfasdfasdasdfasdfasdfasdfadsfasdfsdfasdfsfsdafsd", user_id: @employee.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

