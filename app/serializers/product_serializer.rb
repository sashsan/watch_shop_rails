class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :bytitle, :content, :price,
             :old_price, :description, :short_title

  belongs_to :category

  has_many :related_products
  has_many :related, through: :related_products

  def short_title
    object.title.truncate(8)
  end
end
