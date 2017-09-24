 module Filterable
   extend ActiveSupport::Concern

   module ClassMethods
     def filter(filtering_params)
       results = self.where(nil)
       filtering_params.each do |k,v|
         results = results.public_send(key,value)
       end
       results
     end
   end


 end
