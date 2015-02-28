
module AhrefsAPI
  class SubscriptionInfo < AhrefsAPI::Base
    
    def from
      :subscription_info
    end
    
    def get_json
      super('ahrefs.com')
    end
  end
end
