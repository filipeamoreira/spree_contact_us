Spree Contac tUs
=============

Spree extension for contact tasks.

Requirements
------------

You need have installed the following software on the computer:

* Ruby 1.9.2 or higher
* Rails 3.1
* Spree 0.70.x

Installation
------------

Add the following to your Gemfile:

	gem 'spree_contact_us', :git => 'git://github.com/softwhisper/spree_contact_us.git'

Intall the gem:

	bundle install
	
To copy and apply migrations run:

	rails g spree_contact_us:install
	
Create a initializar with the content:

	# In config/initializaers/setup_mail.rb

	ActionMailer::Base.smtp_settings = {
	  :address              => "smtp.gmail.com",
	  :port                 => 587,
	  :domain               => "<domain>",
	  :user_name            => "<email>",
	  :password             => "<password>",
	  :authentication       => "plain",
	  :enable_starttls_auto => true
	}
	
License
-------
GNU General Public License, Version 3, 29 June 2007