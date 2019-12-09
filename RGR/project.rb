# Create a Project Class that has the following attributes: name, description. 
# Also, create a instance method called elevator_pitch that will print out the name of the project and its description separated by a comma.

class Project
    attr_accessor :name, :description
    
    def initialize(name, description)
        @name = name
        @description = description
    end
    def elevator_pitch
        return "#{@name}, #{@description}"
    end
end