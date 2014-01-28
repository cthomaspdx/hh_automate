require_relative 'sign_up'


def signed_in?(driver)
  driver.link(:href => "/dashboard").exists?
end

def can_post
	signed_in?(driver) ||= sign_up
end

def post_property(driver)
	

end

