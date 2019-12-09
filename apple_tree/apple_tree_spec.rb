require_relative 'apple_tree'
RSpec.describe Apple_Tree do
    before(:each) do 
        @apple_tree = Apple_Tree.new
    end
    context "at any age" do 
        it "has a getter and setter for age attribute" do
            expect(@apple_tree.age).to eq(0)
            @apple_tree.age = 17
            expect(@apple_tree.age).to eq(17)
        end
        it "can not modify height attribute" do
            expect(@apple_tree.height).to eq(3)
            expect{@apple_tree.height = 15}.to raise_error(NoMethodError)
        end
        it "can not set apple_count attribute" do
            expect(@apple_tree.apple_count).to eq(0)
            expect{@apple_tree.apple_count = 3}.to raise_error(NoMethodError)
        end
    end
    context "first three years" do 
        it "has a getter and setter for name attribute" do
            expect(@apple_tree.apple_count).to eq(0)
        end

    end
    context "middle ages between 3 and 7" do
        # this next line mods the constant
        before(:each) do
            3.times { @apple_tree.year_gone_by }
        end
        it "has a year_gone_by attribute that will grow apples" do
            expect(@apple_tree.age).to eq(3)
            expect(@apple_tree.apple_count).to eq(2)
        end
        # it "can grow apples" do
        #     @apple_tree.age = 3
        #     @apple_tree.year_gone_by
        #     expect(@apple_tree.apple_count).to eq(2)
        # end
        it "removes all apples" do
            @apple_tree.pick_apples
            expect(@apple_tree.apple_count).to eq(0)
        end
    end
    context "golden years above 10" do
        before(:each) do
            @apple_tree.age = 11
        end
        it "can not grow more apples" do
        #     @apple_tree.age = 9
        #     @apple_tree.year_gone_by
        #     @apple_tree.apple_count
            @apple_tree.year_gone_by
            expect(@apple_tree.apple_count).to eq(0)
        end
        
    end
end
