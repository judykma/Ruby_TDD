class Apple_Tree
    attr_accessor :age #using attr_acc creates both GETTER and SETTER
    
    def initialize
        @age = 0
        @height = 3
        @apple_count = 0
    end
    def height
        @height
    end
    def apple_count
        @apple_count
    end

    def year_gone_by
        @age += 1
        @height *= 1.1
        @apple_count += 2 unless (@age < 3 or @age > 10)
        # if @age > 3 && @age <= 10
        #     @apple_count += 2
        # else
        #     puts "Apple tree cannot produce fruit yet."
        # end
    end
    def pick_apples
        @apple_count = 0
    end

    # private
    #     def count
    #         @apple_count
    #     end
end