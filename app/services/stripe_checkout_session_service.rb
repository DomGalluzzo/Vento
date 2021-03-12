require 'sendgrid-ruby'
include SendGrid

class StripeCheckoutSessionService
    def call(event)
      order = Order.find_by(checkout_session_id: event["data"]["object"]["id"])
      if order 
        order.update(state: 'paid') 

        from = Email.new(email: 'info@vento.live')
        to = Email.new(email: 'freddie.sparrow@gmail.com')
        subject = 'Your Vento Confirmation & Documents'
        content = Content.new(type: 'text/plain', value: 'Congratulations your event is now covered')
        mail = Mail.new(from, subject, to, content)
        
        sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
        response = sg.client.mail._('send').post(request_body: mail.to_json)
        puts response.status_code
        puts response.body
        puts response.headers
      end 
    end
  end