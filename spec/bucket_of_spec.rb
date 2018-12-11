require 'byebug'
require 'spec_helper'

describe "BucketOf tests" do
  before(:each) do 
    @grape = Item.new(:grape, 1.00, "each")
  end

  describe '#new' do
    it 'instantiates a BucketOf one grape' do
      grape_bucket = BucketOf.new(@grape)
      expect(grape_bucket.type).to eq(@grape.name)
      expect(grape_bucket.count).to eq(1)
    end
  end

end
