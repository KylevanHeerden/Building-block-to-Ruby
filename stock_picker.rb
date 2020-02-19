def stock_picker(array)

    x = array.length
    array2 = []
    array.each do |x|
      array2.push(x)
    end
  
    #puts array2
  
  
      while x > 1 do
  
        max = array2.max()
        min = array2.min()
  
        maxposition = array2.index(max)
        minposition = array2.index(min)
  
  
  
        if maxposition > minposition
          
          min2 = array2.min()
          max2 = array2.max()
          
          break
        elsif maxposition < minposition
          array2.delete(max)
          array2.delete(min)
          #puts array
        end
      end
  
    #puts array
  
    thereturn = max2 - min2
    buyday = array.index(min2)
    sellday = array.index(max2)
  
    #puts "Buy on day #{buyday}"
    #puts "Sell on day #{sellday}"
          
    #puts "Your return will then be #{max2} - #{min2} = #{thereturn}"
  
    puts [buyday, sellday]
  
  end
  
  stock_picker([17,16,6,9,15,8,2,1,10])