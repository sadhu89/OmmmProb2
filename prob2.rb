class Calculator
    def evaluate(arr)
        @arr=arr.split(" ")
        operar('*','/')
        operar('+','-')
    end
    
    def operar(a,b)
        i=0
        while i<@arr.length 
            if(@arr[i+1]==a||@arr[i+1]==b)
                @arr.insert(i,@arr[i].to_i.send(@arr[i+1],@arr[i+2].to_i))
                3.times{@arr.delete_at(i+1)}
            else
                i+=1
            end
        end
        @arr
    end
end

p Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # debe retornar 7