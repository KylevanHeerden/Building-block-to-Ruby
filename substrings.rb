dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, dictionary)

  string.downcase()

  splitstring = string.split(" ")
  #puts splitstring


  wordsexist = []
  countarray = []

  h = {}

  if dictionary.include? string
    h[string] = dictionary.count(string)
  end

  splitstring.each do |x|
    doublesplitstring = x.split("")
    #puts doublesplitstring
    doublesplitstring.each do |x|
        splitstring.each do |y|
          checker = y.split(x)
          #puts checker
            checker.each do |x|
              if dictionary.include? x
                  wordsexist.push(x)
                  countarray.push(dictionary.count(x))

                  countarray.each do |x|
                    x.to_s
                  end

                  #puts wordsexist
                  #puts countarray
                
                  wordsexist.each_with_index do |value, index|
                    h[value] = countarray[index]
                  end

                  #puts h

          end
        end
      end
    end
  end

  puts h 

end 


#substrings("below", dictionary)

substrings("below the part", dictionary)