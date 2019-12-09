require_relative 'bankAccount'
RSpec.describe BankAccount do
    before(:each) do 
        @bankAccount1 = BankAccount.new(2500, 5000)
        @bankAccount2 = BankAccount.new(100, 500)
    end

    context "With valid attributes" do 

        it 'has a getter method for the checking_acct attribute' do 
            expect(@bankAccount1.checking_acct).to eq(2500)
        end

        it 'has a getter method that retrieves the total account balance' do
            expect(@bankAccount2.total_balance).to eq(600)
        end  

        it 'has a function that allows the user to withdraw cash' do
            @bankAccount1.withdraw('checking', 500)
            expect(@bankAccount1.checking_acct).to eq(2000)
        end
    end
    context "with invalid attribute:" do

        # Raises an error if a user tries to withdraw more money than they have in the account
        it "can't withdraw amount greater than account value" do
            expect{@bankAccount2.withdraw('checking', 50000)}.to output("Insufficient funds in Checking Account.\n").to_stdout
        end  
        # Raises an error when the user attempts to retrieve the total number of bank accounts
        it "can't display total number of bank accounts" do
            expect{@bankAccount1.no_accts}.to raise_error(NoMethodError)
        end  
        # Raises an error when the user attempts to set the interest rate
        it "can't change interest rate" do
            expect{@bankAccount1.interest_rate = 0.1}.to raise_error(NoMethodError)
        end
    end
end