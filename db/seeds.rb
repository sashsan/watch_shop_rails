# frozen_string_literal: true

require 'faker'


# table brands

brand_attributes = [{
                        title: 'Citizen', bytitle: 'citizen',
                        img: 'abt-2.jpg', description: Faker::Superhero.name
                    },
                    {
                        title: 'Casio', bytitle: 'casio', img: 'abt-1.jpg',
                        description: Faker::Superhero.name
                    },
                    {
                        title: 'Royal London', bytitle: 'royal-london',
                        img: 'abt-3.jpg', description: Faker::Superhero.name
                    },
                    {
                        title: 'Seiko', bytitle: 'seiko', img: 'seiko.png',
                        description: Faker::Superhero.name
                    },
                    {
                        title: 'Diesel', bytitle: 'diesel', img: 'diesel.png',
                        description: Faker::Superhero.name
                    }]

brand_attributes.each do |attr|
  Brand.create(attr) unless Brand.where(attr).first
end

# - - - - -


# table categories

women = Category.create(title: 'Women', bytitle: 'women', keywords: 'women', description: 'for women')
electronic2 = Category.create(title: 'Electronic', bytitle: 'electronic2', keywords: 'electronic', description: 'electronic', parent: women)
mechanical2 = Category.create(title: 'Mechanical', bytitle: 'mechanical2', keywords: 'mechanical', description: 'mechanical', parent: women)
epos = Category.create(title: 'Epos', bytitle: 'epos', keywords: 'epos', description: 'epos', parent: electronic2)
seiko = Category.create(title: 'Seiko', bytitle: 'seiko', keywords: 'seiko', description: 'seiko', parent: mechanical2)

men = Category.create(title: 'Men', bytitle: 'men', keywords: 'men', description: 'for men')
electronic1 = Category.create(title: 'Electronic', bytitle: 'electronic1', keywords: 'electronic', description: 'electronic', parent: men)
mechanical1 = Category.create(title: 'Mechanical', bytitle: 'mechanical1', keywords: 'mechanical', description: 'mechanical', parent: men)
casio = Category.create(title: 'Casio', bytitle: 'casio', keywords: 'casio', description: 'casio', parent: mechanical1)
citizen = Category.create(title: 'Citizen', bytitle: 'citizen', keywords: 'citizen', description: 'citizen', parent: electronic1)
royal = Category.create(title: 'Royal London', bytitle: 'royal-london', keywords: 'royal-london', description: 'royal-london', parent: electronic1)

kids = Category.create(title: 'Kids', bytitle: 'kids', keywords: 'kids', description: 'for kids')
adriatica = Category.create(title: 'Adriatica', bytitle: 'adriatica', keywords: 'adriatica', description: 'adriatica', parent: kids)
mechanical1 = Category.create(title: 'Anne Klein', bytitle: 'anne-klein', keywords: 'anne-klein', description: 'anne-klein', parent: kids)

# - - - - - - - -


# table products
product_attributes = [
                      {
                          category_id: '6',
                          brand_id: '1',
                          title: 'Casio MQ-24-7BUL',
                          bytitle: 'casio-mq-24-7bul',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-2.png',
                          hit: 1
                      },
                      {
                          category_id: '6',
                          brand_id: '1',
                          title: 'Casio GA-1000-1AER',
                          bytitle: 'casio-ga-1000-1aer',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-3.png',
                          hit: 1
                      },
                      {
                          category_id: '7',
                          brand_id: '2',
                          title: 'Citizen JP1010-00E',
                          bytitle: 'citizen-jp1010-00e',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-4.png',
                          hit: 1
                      },
                      {
                          category_id: '7',
                          brand_id: '2',
                          title: 'Citizen BJ2111-08E',
                          bytitle: 'citizen-bj2111-08e',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-5.png',
                          hit: 1
                      },
                      {
                          category_id: '6',
                          brand_id: '4',
                          title: 'Royal London 41040-01',
                          bytitle: 'royal-london-41040-01',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-6.png',
                          hit: 1
                      },
                      {
                          category_id: '6',
                          brand_id: '4',
                          title: 'Royal London 20034-02',
                          bytitle: 'royal-london-20034-02',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-7.png',
                          hit: 1
                      },
                      {
                          category_id: '6',
                          brand_id: '4',
                          title: 'Royal London 41156-02',
                          bytitle: 'royal-london-41156-02',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-8.png',
                          hit: 1
                      },
                      {
                          category_id: '6',
                          brand_id: '4',
                          title: 'Royal London 6754-99',
                          bytitle: 'royal-london-6754-99',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-6.png',
                          hit: 1
                      },
                      {
                          category_id: '1',
                          brand_id: '4',
                          title: 'Royal London 12',
                          bytitle: 'royal-london-67512',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-5.png',
                          hit: 1
                      },
                      {
                          category_id: '2',
                          brand_id: '4',
                          title: 'Royal London 6754-9922',
                          bytitle: 'royal-london-6754-9922',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-4.png',
                          hit: 1
                      },
                      {
                          category_id: '3',
                          brand_id: '4',
                          title: 'Royal London 6754-939',
                          bytitle: 'royal-london-6754-939',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-3.png',
                          hit: 1
                      },
                      {
                          category_id: '4',
                          brand_id: '4',
                          title: 'Royal London 6754-919',
                          bytitle: 'royal-london-6754-199',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-2.png',
                          hit: 1
                      },
                      {
                          category_id: '5',
                          brand_id: '4',
                          title: 'Royal London 67534-99',
                          bytitle: 'royal-london-67354-99',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-1.png',
                          hit: 1
                      },
                      {
                          category_id: '8',
                          brand_id: '4',
                          title: 'Royal London 675214-99',
                          bytitle: 'royal-london-671154-99',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-6.png',
                          hit: 1
                      },
                      {
                          category_id: '9',
                          brand_id: '4',
                          title: 'Royal London 6712354-99',
                          bytitle: 'royal-london-6123754-99',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-5.png',
                          hit: 1
                      },
                      {
                          category_id: '10',
                          brand_id: '4',
                          title: 'Royal London 675334-99',
                          bytitle: 'royal-london-675334-99',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-4.png',
                          hit: 1
                      },
                      {
                          category_id: '11',
                          brand_id: '4',
                          title: 'Royal London 67123454-99',
                          bytitle: 'royal-london-67234554-99',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-3.png',
                          hit: 1
                      },
                      {
                          category_id: '12',
                          brand_id: '4',
                          title: 'Royal London 6751224-99',
                          bytitle: 'royal-london-67121254-99',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-2.png',
                          hit: 1
                      },
                      {
                          category_id: '13',
                          brand_id: '4',
                          title: 'Royal London 675334-99',
                          bytitle: 'royal-london-6754444-99',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-6.png',
                          hit: 1
                      }


]

product_attributes.each do |attr|
  Product.create(attr) unless Product.where(attr).first
end

# - - - - -

