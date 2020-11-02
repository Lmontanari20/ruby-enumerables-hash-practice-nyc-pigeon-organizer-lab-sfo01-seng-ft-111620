def nyc_pigeon_organizer(data)
  # write your code here!
  
  new_data = {}
  
  # go through the outer most hash, keys are description values are hashes
  data.each { |k,v| 
    # go through the secondary value hash, keys are description values are arrays of names
    v.each { |k2, names| 
      # go through each name in names array
      names.each { |name| 
        # if name is not in new hash add it with corresponding key
        if new_data[name] == nil 
          new_data[name] =  {
            k => []
          }
        end
        # if the name is there but the corresponding key isn't add it and make it an array
        if new_data[name][k] == nil 
          new_data[name][k] = []
        end
      
        new_data[name][k] << k2.to_s
      }
    }
  }
  new_data
end
