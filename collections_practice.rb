def begins_with_r(array)
  result = true
  array.each do |i|
    if i.start_with?("r")==false
      result=false
    end
  end
  result
end

def contain_a(array)
  array.keep_if{|element| element.include?("a")}
end

def first_wa(array)
  array.find {|element| element.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.keep_if{|element| element.is_a?(String)}
end

def count_elements(array)
  retArray = []
  array.each do |temp|
    temp.each do |first,second|
      count = {first => second, :count => array.count(temp)}
      retArray << count
    end
  end
  retArray.uniq!
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |i|
    name = i[:first_name]
    data.each do |otherData|
      if otherData[name]
        merger = otherData[name]
        merger[:first_name] = name
        merged_data << merger
      end
    end
  end
  merged_data
end

def find_cool(array)
  retArray = []
  array.each {|element| retArray << element if element[:temperature]=="cool"}
  retArray
end

def organize_schools(schools)
  retHash = Hash.new
  schools.each do |schoolName, loc|
    location = loc[:location]
    if retHash[location]
      retHash[location] << schoolName
    else
      retHash[location] = []
      retHash[location] << schoolName
    end
  end
  retHash
end
