require 'net/http'
require 'rest_client'
module ElasticEmail
  class Client

    def send_message(options)
      RestClient::Request.execute(
        method: :post,
        url: elastic_email_send_url,
        payload: options,
        verify_ssl: true
      )
    end

    def elastic_email_uri
      URI.parse(elastic_email_send_url)
    end

    def elastic_email_send_url
      'https://api.elasticemail.com/v2/email/send'
    end

  end
end
