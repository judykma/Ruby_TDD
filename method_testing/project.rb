# Create a Project Class that has the following attributes: name, description. 
# Also, create a instance method called elevator_pitch that will print out the name of the project and its description separated by a comma.

class Project
    attr_accessor :name, :description, :owner
    
    def initialize(name, description, owner)
        @name = name
        @description = description
        @owner = owner
        @tasks = []
    end
    def elevator_pitch
        return "#{@name}, #{@description}"
    end
    def tasks
        return @tasks
    end
    def add_tasks task
        @tasks.push(task)
        # puts "successfully added task to array"
    end
    def print_tasks
        # @tasks.each { |t| p t}
        #p prints and returns

        @tasks.each do |i| 
            p i.to_s
        end
        #when used puts gave task w/o ""
        #when used p gave task w/i ""

        # for t in 0...@tasks.length    WRONG! Shows index number
        #     p t
        # end
    end
end
project1 = Project.new("Project 1", "Description 1", "James")
project2 = Project.new("Project 2", "Description 2", "Judy")
puts project1.name # => "Project 1"
puts project2.owner
puts project1.elevator_pitch  # => "Project 1, Description 1"
project2.add_tasks("Take out trash")
project2.add_tasks("Walk the pups")
p project2.tasks
project2.print_tasks
