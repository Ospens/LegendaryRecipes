# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create(title: 'Свинина', description: 'Свинина – жирное, нежное мясо, имеющее сладковатый привкус. Чтобы подчеркнуть достоинства свинины важно выбрать нужные куски для приготовления соответствующего блюда. В качестве свинины в духовке можно приготовить практически любую часть тушки свинь', img: 'pork.jpg', category: 'meat')
Recipe.create(title: 'Курица', description: 'Для приготовления этого блюда понадобятся: кусочки курицы, лук репчатый, сметана, чеснок, подсолнечное масло, соль, красный сладкий молотый перец, петрушка, укроп', img: 'chicken.jpg', category: 'meat')
Recipe.create(title: 'Говядина', description: 'Большой кусок говядины (шея, лопатка, рулет из толстого края) - запекается в тяжелой огнеупорной посуде с крышкой в духовке 2 часа. Можно запекать в форме для выпечки с бортами и хорошо закрыть фольгой. Мясо получается нежным и сочным.', img: 'beef.jpg', category: 'meat')
#Ingredient.create(title: 'морковь')
#Ingredient.create(title: 'лук')
#Ingredient.create(title: 'картофель')
