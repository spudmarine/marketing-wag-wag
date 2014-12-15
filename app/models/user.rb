class User < ActiveRecord::Base
	validates_uniqueness_of :email
	validates_presence_of :email, :first_name, :zip_code

	after_create do
    subscribe_to_mailchimp
	end

	def subscribe_to_mailchimp
	  @mailchimp_list_id = "63cae63078"
	  @gb = Gibbon::API.new
	  
	    @gb.lists.subscribe({
	    :id => @mailchimp_list_id,
	    :email => {:email => self.email},
	    :merge_vars => {
	      :first_name => self.first_name,
	      :last_name => self.last_name,
	      :zip_code => self.zip_code,
	      :phone => self.phone
	    },
	    :double_optin => false,
	    :send_welcome => true
	  })
	  
	end
end
