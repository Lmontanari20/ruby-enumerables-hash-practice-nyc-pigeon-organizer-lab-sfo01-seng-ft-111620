def nyc_pigeon_organizer(data)
  # write your code here!
  
  new_data = {}
  
  data.each { |k,v| 
    v.each { |k2, name| 
      if new_data[name]
        if new_data[name][k]
          new_data[name][k] << k2
        else 
          new_data[name][k] = [k]
      else
        
      end
    }
  }
end
