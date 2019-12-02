# This file lives in the app/mailers directory
# See http://guides.rubyonrails.org/action_mailer_basics.html for details

class ContactsMailer < ActionMailer::Base
    default from: "internet.of.turtles@gmail.com"

     
    def general_message(contact)
      @contact = contact
      mail( :to => "internet.of.turtles@gmail.com", :subject => @contact.name)
    end
    def wellcome_message(contact)
      @contact = contact
      mail( :to => @contact.email, :subject => "Wellcome")
    end
  end