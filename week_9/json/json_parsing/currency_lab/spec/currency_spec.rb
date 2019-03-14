require 'spec_helper.rb'

describe 'Exchange rates JSON tests' do

  before(:all) do
    @exchange_rates = JSONParse.new('json_exchange_rates.json')
  end

  it "should be a hash" do
    expect(@exchange_rates.json_parse).to be_kind_of(Hash)
  end

  it "should have a date string" do
    expect(@exchange_rates.json_parse["date"]).to be_kind_of(String)
  end

  it "should contain 31 rates" do
    expect(@exchange_rates.json_parse["rates"].count).to eq 31
  end

  it "should list all rates as floats" do
    @exchange_rates.json_parse["rates"].each do |key, value|
      expect(value).to be_kind_of(Float)
    end
  end

  it "should list the base as EUR" do
    expect(@exchange_rates.json_parse["base"]).to eq "EUR"
  end

end
