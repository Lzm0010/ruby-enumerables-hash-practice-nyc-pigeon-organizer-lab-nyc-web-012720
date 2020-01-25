def nyc_pigeon_organizer(data)
  #Hash of attributes => hashes of attr instances of => array of pigeons with that attribute
  attributes = [:color, :gender, :lives]
  pigeon_list = {}
  
  #get all pigeon names from arrays and convert to a key and the previous key to the value at the same time
  attributes.each{ |attribute|
    data[attribute].each_pair{|key, value|
      value.map{|name|
        if pigeon_list[name]
        #   pigeon_list[name][attribute] << key
        # else
        #   pigeon_list[name][attribute] = [key]
        # end
      }
    }
  }
  puts pigeon_list
  pigeon_list
end
