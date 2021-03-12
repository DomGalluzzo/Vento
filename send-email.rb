# using SendGrid's Ruby Library
# https://github.com/sendgrid/sendgrid-ruby
require 'sendgrid-ruby'
include SendGrid

from = Email.new(email: 'info@vento.live')
to = Email.new(email: 'freddie.sparrow@gmail.com')
subject = 'Your Vento Confirmation & Documents'
content = Content.new(type: 'text/plain', value: 'Congratulations your event is now covered')
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key:'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')
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers