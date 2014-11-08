class ArticleMailer < ActionMailer::Base
	default :from => "vharissh14@gmail.com"
 def self.send_emails_request(article)
     @recipients = Newslet.all
     @recipients.each do |recipient|
       newsletter_mail(recipient, article).deliver
     end
   end
 def newsletter_mail(recipient, article)
 	@det = article
 	mail(:to => recipient.email, :subject => "New Article Published #Bloggerx")
end
end
