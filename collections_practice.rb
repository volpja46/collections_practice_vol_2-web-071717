def begins_with_r (array)
    array.all? {|item| item.start_with? ('r')}
end

def contain_a(array)
     array.select { |item| item.include? "a" }
    end

def first_wa (array)
    array.find { |item| item[0..1] == "wa"}
end

def remove_non_strings (array)
    array.delete_if {|word| word != word.to_s}
    end

def count_elements (array)
  array.uniq.each do |word|
        word[:count] = array.count(word)
    end
end

def merge_data (keys, data)
    keys.collect do |key|
         key.merge(data[0][key[:first_name]])
end
    end


def find_cool (array)
     array.select { |item| item[:temperature] == "cool" }
end

def organize_schools (schools)
         results_array = {}
         schools.each do |key, value|
               if(results_array[value[:location]] == nil)
                results_array [value[:location]] = [key]
               else
               results_array[value[:location]] << key
                end
          end
      results_array
    end
