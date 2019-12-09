require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do  
    before(:each) do 
        @project = Project.new('Name', 'Description')
    it 'has a getter and setter for name attribute' do
        expect(@project.name).to eq("Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
    end
    it 'has a setter for the description attribute' do
        expect(@project.description).to eq("Description")
    end
    it 'has a method elevator_pitch to explain name and description' do
        expect(@project.elevator_pitch).to eq("Name, Description")
    end
end