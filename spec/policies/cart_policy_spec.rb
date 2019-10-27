require 'rails_helper'

RSpec.describe CartPolicy, type: :policy do
  let(:user)    { create :user }
  let(:product) { create :product }
  let(:cart)    { create :cart, user: user }
  let(:item)    { create :cart_item, cart: cart, product: product}

  subject { described_class }

  permissions :show? do
    context 'for auth user' do
      it 'grants to show cart' do
        expect(subject).to permit(user)
      end
    end
    context 'for visitor' do
      let(:user) { nil }
      it { should_not permit(user) }
    end
  end

  permissions :destroy? do
    let(:user) { nil }
    it { should_not permit(user) }
  end
end
