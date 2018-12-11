require 'byebug'
require 'spec_helper'

describe "Cart tests" do

  describe '#new' do
    it 'instantiates with empty items list' do
      cart = Cart.new
      expect(cart.items).to be_empty
    end
    it 'instantiates with empty discounts list' do
      cart = Cart.new
      expect(cart.discounts).to be_empty
    end
  end

  describe '#add_item' do 
    it 'adds an item to the cart' do
      apple = Item.new("apple", 1.22, "weight")
      cart = Cart.new()
      cart.add_item(apple)
      expect(cart.items).to include(apple)
    end
  end

  describe '#total' do
   it 'returns the total price of all items when no discounts are available ' do
    apple = Item.new( "apple",  1.11, "weight")
    banana = Item.new( "banana",  0.69, "each")
    cantaloupe = Item.new("cantaloupe", 3.20, "each")

     cart = Cart.new()
     cart.add_item(apple)
     cart.add_item(banana)
     cart.add_item(cantaloupe)
    
     expect(cart.total).to eq(apple.price + banana.price + cantaloupe.price )
   end
  end

  describe '#buy one get one' do
    before(:each) do
     @grape = Item.new(:grape, 1.00, "each")
     @discount_cart = Cart.new 
    end

    xit 'returns the proper price when a single grape is in the cart' do
    end

    it 'returns the proper price when 2 grapes are in the cart' do
     @discount_cart.add_item(@grape)
     @discount_cart.add_item(@grape)
     byebug
     price = @discount_cart.buy_this_many_get_that_many(1,1, @grape)
     expect(price).to eq(1.00)
     expect(@discount_cart.count_item("grape")).to eq(2)
    end

    it 'returns the proper price when 3 grapes are in the cart' do

    end
  end

  describe '#buy one get two ' do
    xit 'returns the proper price for 1 grape' do
     grape = Item.new(:grape, 1.00, "each")
     cart = Cart.new
     cart.add_item(grape)
     cart.add_item(grape)
     price = cart.buy_this_many_get_that_many(1,2, grape)
     expect(price).to eq(2.00)
    end

    xit 'returns the proper price for 2 grapes' do
     grape = Item.new(:grape, 1.00, "each")
     cart = Cart.new
     cart.add_item(grape)
     cart.add_item(grape)
     price = cart.buy_this_many_get_that_many(1,2, grape)
     expect(price).to eq(2.00)
    end

    xit 'returns the proper price for 3 grapes' do
     grape = Item.new(:grape, 1.00, "each")
     cart = Cart.new
     cart.add_item(grape)
     cart.add_item(grape)
     price = cart.buy_this_many_get_that_many(1,2, grape)
     expect(price).to eq(2.00)
    end

    xit 'returns the proper price for 4 grapes' do
     grape = Item.new(:grape, 1.00, "each")
     cart = Cart.new
     cart.add_item(grape)
     cart.add_item(grape)
     price = cart.buy_this_many_get_that_many(1,2, grape)
     expect(price).to eq(2.00)
    end


  end


end
