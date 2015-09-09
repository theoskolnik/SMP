require 'rspec'
require_relative 'smp.rb'

alice = Person.new(6)
bob = Person.new(15)

describe Person do
  
  describe '#initialize' do
    it 'expects one argument' do
      expect(Person.instance_method(:initialize).arity).to eq 1
    end
  end

  describe '#send_message' do 
  	it 'creates a sharable key' do 
  	  expect(alice.send_message).to eq 8
  	  expect(bob.send_message).to eq 19
  	end
  end

  describe '#compute_message' do 
  	it 'calculates common value based on key' do
  		allow(alice).to receive(:send_message).and_return(8)
  		allow(bob).to receive(:send_message).and_return(19)
  		expect(alice.compute_message(bob.send_message)).to eq 2
  		expect(bob.compute_message(alice.send_message)).to eq 2
  	end
  end

end