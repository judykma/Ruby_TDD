require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do  
    before(:each) do 
        @project1 = Project.new('Project 1', 'description 1', "James") # create a new project and make sure we can set the name attribute
        @project2 = Project.new('Project 2', 'description 2', "Judy")
    end
    it 'has a getter and setter for name attribute' do
        @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
        expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
    end
    it 'has a method elevator_pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq("Project 1, description 1")
        expect(@project2.elevator_pitch).to eq("Project 2, description 2")
    end
    it 'has a getter and setter for Owner attribute' do
        @project1.owner = "Changed Owner"
        expect(@project1.owner).to eq("Changed Owner")
    end
    it 'has a method tasks that returns the tasks for each project' do 
        #can you show something
        @project2.add_tasks("Take out trash")
        @project2.add_tasks("Walk the pups")
        expect(@project2.tasks).to eq(["Take out trash", "Walk the pups"])
    end
    it 'has a method add_tasks that that pushes a single tasks to the tasks attribute' do 
        #can you do something
        expect(@project1.tasks).to eq([])
        @project1.add_tasks("Play games.")
        expect(@project1.tasks).to eq(["Play games."])
    end
    it 'method print_tasks shows each task in a seperate line' do 
        #can you show something
        @project1.add_tasks("Play games.")
        expect(@project1.print_tasks).to eq(["Play games."])
    end
end