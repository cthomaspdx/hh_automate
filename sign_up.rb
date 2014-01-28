
  


def sign_up(driver)
	p = driver.link :id => "post-link"
	p.click


	#Sign up page 
	first_name = Faker::Name::first_name 
	last_name = Faker::Name::last_name
	email_text = "#{first_name}.#{last_name}@mt2014.com"
	password = "password = password"
	

		puts first_name
		puts last_name
		puts email_text 
		puts password

	first = driver.text_field :id => "user_first_name"
	first.set first_name
	
	last = driver.text_field :id => "user_last_name"
	last.set last_name
	
	email = driver.text_field :id => "user_email"
	email.set email_text
	
	pass = driver.text_field :id => "user_password"
	pass.set password
	
	pass_conf = driver.text_field :id => "user_password_confirmation"
	pass_conf.set password
	
	submit = driver.button :text => "Sign Up"
	submit.click
end
	binding.pry
	sign_up(driver)
	
	def includes_text?(element, driver) 
		result = driver.text.include?(element) 
	  driver.screenshot.save "#{element}-#{Time.now.to_i}.png"  if result == false 
	end


	links = %W(Notifications Profile Settings Posts Drafts Likes)

	links.each do |e|
		includes_text?(e, driver)
	end

	filters = ["Notifications","You do not have any notifications at this time.", "Filters", "Likes", "Flagged posts", "Expired posts", "Expiring posts", "Liked posts expiring"]
	
	filters.each do |e|
		includes_text?(e, driver)
	end




	fake_contact_info = Faker::Lorem.paragraph(4)
	fake_brokerage = Faker::Company.name
	broker_about_info = "I #{Faker::Company.bs} all the freaking time!"
	broker_experience_info = Faker::Company.catch_phrase
	phone = rand.to_s[2..11]




#binding.pry

	profile = driver.link :class => "navmenu-link-profile"
	profile.exists?
	profile.click

	photo_file = "/Users/chadclark/Sites/Selenium/cookie-monster.jpg"
	puts "Photo exists? = #{File.exists?(photo_file)}"
	avatar = driver.file_field :name => "user[avatar]"
	puts "file upload link #{avatar.exists?}"
	avatar.set(photo_file)

	location = driver.text_field :name => "location"
	location.set("Portland, Or")
	#binding.pry
	location.fire_event(:key_up)
	
	phone_num = driver.text_field :name => "cell_phone"
	phone_num.set(phone)
	phone_num.fire_event(:key_up)
	
	office_num = driver.text_field :name => "office_phone"
	office_num.set phone
	office_num.fire_event(:key_up) 

	pro_type = driver.span :class =>  "selection placeholder"
	pro_type.click

	broker = driver.span :class => "checkbox"
	broker.click

	
	contact = driver.text_field :name => "contact_advice"
	contact.set(fake_contact_info)
	

	brokerage_name = driver.text_field :name => "broker_profile[brokerage_name]"
	brokerage_name.set(fake_brokerage)
	

	broker_designation = driver.text_field :name => "broker_profile[designation]"
  broker_designation.set("agent")
  

	broker_about = driver.text_field :name => "broker_profile[about]"
	broker_about.set(broker_about_info)
	
  
  broker_experience = driver.text_field :name => "broker_profile[experience]"
  broker_experience.set(broker_experience_info)

 	contact.send_keys(:space)
	brokerage_name.send_keys(:space)
	broker_designation.send_keys(:space)
	broker_about.send_keys(:space)
	broker_experience.send_keys(:space) 

	# driver.
	# driver.link(:text, "Negotiation").click
	# driver.link(:text, "Marketing").click
	# driver.link(:text, "Relocation").click
	# driver.link(:text, "First time home buyers").click
	# driver.link(:text, "Creative Financing").click
	# driver.link(:text, "Buyer Representation").click
	# driver.link(:text, "Seller Representation").click
	# driver.link(:text, "Military Families").click
	# driver.link(:text, "Bilingual").click


	# driver.link(:text, "Bad Credit OK").click
	# driver.link(:text, "No Bank Qualifying").click
	# driver.link(:text, "Owner Financing").click
	# driver.link(:text, "Assumable Loan").click
	# driver.link(:text, "Lease Option").click
	# driver.link(:text, "Possible Trade").click
	# driver.link(:text, "Housing Partnership").click
	# driver.link(:text, "House").click
	# driver.link(:text, "Modular").click
	# driver.link(:text, "Condo").click
	# driver.link(:text, "Townhouse").click
	# driver.link(:text, "Land").click
	# driver.link(:text, "Manufactured - Land").click
	# driver.link(:text, "Manufactured - Park").click
	# driver.link(:text, "Duplex").click
	# driver.link(:text, "Fourplex").click
	# driver.link(:text, "Triplex").click
	# driver.link(:text, "Houseboat").click
	# driver.link(:text, "Floating Home").click
	# driver.link(:text, "Traditional Sale").click
	# driver.link(:text, "Foreclosure").click
	# driver.link(:text, "Short Sale").click
	# driver.link(:text, "Auction").click
	# driver.link(:text, "Bank Owned").click
	# driver.link(:text, "HUD Property").click
	# driver.link(:text, "Probate Sale").click
	# driver.link(:text, "Estate Sale").click
	# driver.link(:text, "Tax Sale").click

 
  view_profile = driver.a :class => "profile-link"

  # view_profile.click







# d.close

