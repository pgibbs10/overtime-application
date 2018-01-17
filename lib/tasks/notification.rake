namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
  	puts "I'm in a rake task!"

  	# User.all.each do |user|
  	# 	SmsTool.send_sms()
  	# end
  end

end
