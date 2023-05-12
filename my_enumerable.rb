module MyEnumerable
    def all?
        each do |num|
           unless yield num
            puts false
            return
           end
        end
        puts true
        return
    end

    def any?
        each do |num|
           if yield num
            puts true
            return
           end
        end
        puts false
        return
    end

    def filter
        filtered=[]
        each do |num|
           if yield num
            filtered.push(num)
           end
        end
       puts filtered.inspect
    end


end