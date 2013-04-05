require "multiinsert/version"

module Multiinsert

class SaveRecords
  
  # prepend the name of the model with a hyphen and append the id with a hyphen like book-author-1 
  def save(params,name_of_model,mode)
    model_records = params.select{|param| param.match(/^#{name_of_model}/)}
    
      value_ids = model_records.keys.collect{|rec| rec.split("-")[2]}.uniq!
      @mod = instantiate_model(name_of_model)
      @saved = false
      
        value_ids.each do |item_id|
          @mod = @mod.class.find(item_id) if mode == "update"
          model_records.each do |the_model|
            if the_model.first.split("-")[2] == item_id
              @mod[the_model.first.split("-")[1]] = the_model.last.split.join
            else
              break if !@saved
            end        
          end
        saved = @mod.save
        @mod = instantiate_model(name_of_model)
        @saved = true
        saved
      end
  end
  
  def instantiate_model model
    model.camelize.constantize.new
  end
  
end

  
end
