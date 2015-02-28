
module AhrefsAPI
  # this API endpoint gives a list of the new/lost links up to 60 days back
  # it supports limit, offset, having
  class BacklinksNewLost < AhrefsAPI::Base
    def from
      :backlinks_new_lost
    end
    
    # give options as a hash
    # possible options: 
    # limit  ==> limits the number of returned results
    # select ==> only hands you back the selected columns
    # offset ==> 
    # having ==> 
    # where  ==> accepts type:"new"/type:"lost" and date:"2013-05-26"
    def get_json(target = :'ahrefs.com', opts = {})
      opts[:target] = target
      get_data(opts)
    end
  end
end
