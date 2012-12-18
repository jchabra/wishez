Parent.delete_all
Benefactor.delete_all
Kid.delete_all
List.delete_all
Item.delete_all

p1 = Parent.create(:first_name => 'Ben', :last_name => 'Smith', :city => 'New York', :email => "p1@abc.com", :password => "123", :password_confirmation => "123")
p2 = Parent.create(:first_name => 'Bob', :last_name => 'Jones', :city => 'New York', :email => "p2@abc.com", :password => "123", :password_confirmation => "123")
p3 = Parent.create(:first_name => 'Sally', :last_name => 'Williams', :city => 'New York', :email => "p3@abc.com", :password => "123", :password_confirmation => "123")
p4 = Parent.create(:first_name => 'Julie', :last_name => 'Brown', :city => 'New York', :email => "p4@abc.com", :password => "123", :password_confirmation => "123")
p5 = Parent.create(:first_name => 'Jennifer', :last_name => 'Miller', :city => 'New York', :email => "p5@abc.com", :password => "123", :password_confirmation => "123")

age = [ 3, 4, 5, 6, 7, 8, 9]
health = ['Leukemia', 'Lymphoma', 'Bone cancer', 'Brain Tumor']

k1 = Kid.create(:first_name => 'Josh', :last_name => 'Smith', :age => age.sample, :illness => health.sample)
k2 = Kid.create(:first_name => 'Andrew', :last_name => 'Jones', :age => age.sample, :illness => health.sample)
k3 = Kid.create(:first_name => 'David', :last_name => 'Williams', :age => age.sample, :illness => health.sample)
k4 = Kid.create(:first_name => 'Samantha', :last_name => 'Brown', :age => age.sample, :illness => health.sample)
k5 = Kid.create(:first_name => 'Amanda', :last_name => 'Miller', :age => age.sample, :illness => health.sample)
k6 = Kid.create(:first_name => 'Lindsay', :last_name => 'Smith', :age => age.sample, :illness => health.sample)
k7 = Kid.create(:first_name => 'Brad', :last_name => 'Jones', :age => age.sample, :illness => health.sample)

p1.kids = [k1, k6]
p2.kids = [k2, k7]
p3.kids << k3
p4.kids << k4
p5.kids << k5

l1 = List.create(:title => 'Toys')
l2 = List.create(:title => 'Books')
l3 = List.create(:title => 'Clothes')
l4 = List.create(:title => 'Toys')
l5 = List.create(:title => 'Books')
l6 = List.create(:title => 'Clothes')
l7 = List.create(:title => 'Toys')
l8 = List.create(:title => 'Books')
l9 = List.create(:title => 'Clothes')
l10 = List.create(:title => 'Toys')
l11 = List.create(:title => 'Books')
l12 = List.create(:title => 'Clothes')

k1.lists = [l1]
k2.lists = [l2, l4, l5]
k3.lists = [l3]
k4.lists = [l9, l10, l11]
k5.lists = [l12]

it1 = Item.create(:title => 'Legos', :description => 'LEGO Bricks & More Builders of Tomorrow', :remote_image_url => 'http://ecx.images-amazon.com/images/I/613pVLMWOpL.jpg', :price => '30', :url => 'http://www.amazon.com/LEGO-Bricks-More-Builders-Tomorrow/dp/B0039PUTZY/ref=sr_1_2?ie=UTF8&qid=1355755206&sr=8-2&keywords=legos' )
it2 = Item.create(:title => 'Dora Doll  ', :description => 'Fisher-Price Dora The Explorer Splash Around Dora and Boots', :remot_image_url => 'http://ecx.images-amazon.com/images/I/71jkoYjs-dL._AA1194_.jpg', :price => '27', :url => 'http://www.amazon.com/Fisher-Price-Explorer-Splash-Around-Boots/dp/B005VQGB7O/ref=sr_1_4?s=toys-and-games&ie=UTF8&qid=1355755292&sr=1-4&keywords=dora' )
it3 = Item.create(:title => 'Remote-Control Helicopter', :description => 'Syma S107/S107G R/C Helicopter - Yellow', :remot_image_url => 'http://ecx.images-amazon.com/images/I/31NifEJxqgL._SS500_.jpg', :price => '25', :url => 'http://www.amazon.com/Syma-S107-S107G-Helicopter-Yellow/dp/B004A8ZRB0/ref=sr_1_2?s=toys-and-games&ie=UTF8&qid=1355755410&sr=1-2&keywords=remote+control+helicopter' )

l1.item_ids = [it1.id, it2.id, it3.id]

it4 = Item.create(:title => 'Book for bedtime', :description => 'The Going-To-Bed Book', :image => 'http://ecx.images-amazon.com/images/I/61TU%2B6P-3yL._SS400_.jpg', :price => '6', :url => 'http://www.amazon.com/The-Going-To-Bed-Book-Sandra-Boynton/dp/0671449028/ref=sr_1_1?ie=UTF8&qid=1355755599&sr=8-1&keywords=children%27s+books' )
it5 = Item.create(:title => 'Fun Book', :description => 'The Cat in the Hat', :image => 'http://ecx.images-amazon.com/images/I/517qxR55yML._SS400_.jpg', :price => '9', :url => 'http://www.amazon.com/Cat-Hat-Dr-Seuss/dp/039480001X/ref=sr_1_1?s=books&ie=UTF8&qid=1355755714&sr=1-1&keywords=cat+in+the+hat' )

l2.item_ids = [it4.id, it5.id]

it6 = Item.create(:title => 'T-shirt', :description => 'American Apparel Kids Helvetica Alphabet Fine Jersey Short Sleeve T', :image => 'http://ecx.images-amazon.com/images/I/61FRYbi6jXL._SL1380_.jpg', :price => '3', :url => 'http://www.amazon.com/American-Apparel-Helvetica-Alphabet-Jersey/dp/B003IFJS20/ref=sr_1_58?s=apparel&ie=UTF8&qid=1355755940&sr=1-58' )
it7 = Item.create(:title => 'Baseball Cap', :description => 'Elmo Baseball Cap', :image => 'http://ecx.images-amazon.com/images/I/31m3tvr1ePL.jpg', :price => '9', :url => 'http://www.amazon.com/Elmo-Baseball-Cap-Sesame-Streets/dp/B0041Y8WY2/ref=sr_1_40?s=apparel&ie=UTF8&qid=1355756041&sr=1-40' )

l3.item_ids = [it6.id, it7.id]

b1 = Benefactor.create(:first_name => 'Mike', :last_name => 'Jackson', :email => "b1@abc.com", :password => "123", :password_confirmation => "123", )
b1 = Benefactor.create(:first_name => 'George', :last_name => 'Clark', :email => "b2@abc.com", :password => "123", :password_confirmation => "123", )
b1 = Benefactor.create(:first_name => 'Ken', :last_name => 'Taylor', :email => "b3@abc.com", :password => "123", :password_confirmation => "123", )
b1 = Benefactor.create(:first_name => 'Mary', :last_name => 'Davis', :email => "b4@abc.com", :password => "123", :password_confirmation => "123", )
b1 = Benefactor.create(:first_name => 'Liz', :last_name => 'Wilson', :email => "b5@abc.com", :password => "123", :password_confirmation => "123", )

