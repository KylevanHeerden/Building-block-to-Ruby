

def caeser_cipher(string, number)

    alpha = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

    splitstring = string.downcase.split('')

    #puts splitstring

    newposition = []

    splitstring.each do |x|

      #puts alpha.find_index(x)
      cc = alpha.find_index(x)

      if cc == nil
        c =  nil
      else c = cc + number
      end

      if c != nil
        if c > 25
          d = c % 25 -1

        newposition.push(d)

        else newposition.push(c)
        end
      else newposition.push(c) 
      end

    end

    #puts newposition

    scrambledstring = []

    newposition.each do |x|
      if x != nil
        scrambledstring.push(alpha[x])
      else scrambledstring.push(" ")
      end
    end

    #puts scrambledstring

    puts scrambledstring.join("")

end

#caeser_cipher('yes', 3)

caeser_cipher("My name is Kyle", 5)