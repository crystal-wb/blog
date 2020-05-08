require 'rails_helper'

RSpec.describe Order, type: :model do
  subject {Order.new(product_name: 'Sprite', product_count: 3, customer: FactoryBot.create(:customer))}
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a product_name' do
    subject.product_name = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a product_count' do
    subject.product_count = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a customer' do
    subject.customer_id = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid if the customer_id does not belong to a customer' do
    subject.customer_id = 0
    expect(subject).to_not be_valid
  end
  it 'is not valid if the product_count is not all digits' do
    subject.product_count = 'thinkurgr8'
    expect(subject).to_not be_valid
  end
end
