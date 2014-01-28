
require "watir-webdriver"
require "faker"
require "pry"




  print "What Browser do you want to use? \n Firefox, Chrome, Safari \n>"
  browser = gets.chomp.downcase.to_sym 
  puts browser
  
  def load_browser(browser)
    driver = Watir::Browser.new(browser)
    driver.goto "http://hhpreview:launch13@staging.househappy.org"
  end

  load_browser(browser)

require_relative "sign_up"
require_relative "post_property"
  
  
  def do_action(browser, driver)
    binding.pry
  	print "What do you want to do? \n sign up, post \n>"
    action = gets.chomp.downcase
  	case action 
  		when "sign up"
  			sign_up(driver)
  		when "post"
  			post_property(driver)
  		else 
  		 puts "invalid command"	
  		 do_action
  	end
  end
  
  do_action(browser)


	
	# wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
	# wait.until { driver.find_element(:id => "post-link") }
