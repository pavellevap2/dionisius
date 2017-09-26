require 'rest-client'
module SMSER

  def sent_request(message)
    RestClient.post('https://sms.ru/sms/send',
                    api_id: Rails.application.secrets.sms_ru_key,
                    to: '79618515593',
                    message: "#{message}")
  end
end
