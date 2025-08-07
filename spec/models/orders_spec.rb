require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      order = Order.new(
        name: 'Nikhil',
        address: 'Mumbai',
        email: 'nikhil@example.com',
        items: [
          { id: 1, name: 'T-Shirt', price: '499.0' },
          { id: 2, name: 'Jeans', price: '899.0' }
        ]
      )
      expect(order).to be_valid
    end

    it 'is invalid without a name' do
      order = Order.new(
        name: nil,
        address: 'Mumbai',
        email: 'nikhil@example.com',
        items: [{ id: 1, name: 'T-Shirt', price: '499.0' }]
      )
      expect(order).to_not be_valid
    end

    it 'is invalid without an address' do
      order = Order.new(
        name: 'Nikhil',
        address: nil,
        email: 'nikhil@example.com',
        items: [{ id: 1, name: 'T-Shirt', price: '499.0' }]
      )
      expect(order).to_not be_valid
    end

    it 'is invalid without an email' do
      order = Order.new(
        name: 'Nikhil',
        address: 'Mumbai',
        email: nil,
        items: [{ id: 1, name: 'T-Shirt', price: '499.0' }]
      )
      expect(order).to_not be_valid
    end
  end
end
