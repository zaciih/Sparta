require 'spec_helper'

describe 'Teting basic calcuator functions' do

  before(:each)do
    @calc = Calc.new
  end

  # add
  it "should add two numbers" do
    expect(@calc.add(7,4)).to eq(11)
    expect(@calc.add(7,-4)).to eq(3)
    expect(@calc.add(7,4)).to be_kind_of(Integer)
  end

  # subtract
  it "should subtrct two numbers" do
    expect(@calc.subtract(7,4)).to eq(3)
    expect(@calc.subtract(7,-4)).to eq(11)
    expect(@calc.subtract(7,4)).to be_kind_of(Integer)
  end

  # multiply
  it "should multiply two numbers" do
    expect(@calc.multiply(7,4)).to eq(28)
    expect(@calc.multiply(8,-2)).to eq(-16)
    expect(@calc.multiply(7,4)).to be_kind_of(Integer)
  end

  # divide
  it "should divide two numbers" do
    expect(@calc.divide(8,4)).to eq(2)
    expect(@calc.divide(8,-4)).to eq(-2)
    expect(@calc.divide(7,4)).to be_kind_of(Integer)
  end

end
