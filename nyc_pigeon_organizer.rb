def nyc_pigeon_organizer(data)
  #Hash of attributes => hashes of attr instances of => array of pigeons with that attribute
  attributes = [:color, :gender, :lives]
  result = {}
  
  #get all pigeon names from arrays and convert to a key and the previous key to the value at the same time
  attributes.each{ |attribute|
    data[attribute].each_pair{|key, value|
      puts "key: #{key} and value: #{value}."
      value.map{|name|
        if result[name]
          result[name][attribute] << key
        else
          result[name][attribute] = [key]
        end
      }
    }
  }
end
