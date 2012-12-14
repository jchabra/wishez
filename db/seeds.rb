Parent.delete_all
Benefactor.delete_all
Kid.delete_all

p1 = Parent.create(:first_name => 'Ben', :last_name => 'Smith', :city => 'New York', :email => "p1@abc.com", :password => "123", :password_confirmation => "123")
p2 = Parent.create(:first_name => 'Bob', :last_name => 'Jones', :city => 'New York', :email => "p2@abc.com", :password => "123", :password_confirmation => "123")
p3 = Parent.create(:first_name => 'Sally', :last_name => 'Williams', :city => 'New York', :email => "p3@abc.com", :password => "123", :password_confirmation => "123")
p4 = Parent.create(:first_name => 'Julie', :last_name => 'Brown', :city => 'New York', :email => "p4@abc.com", :password => "123", :password_confirmation => "123")
p5 = Parent.create(:first_name => 'Jennifer', :last_name => 'Miller', :city => 'New York', :email => "p5@abc.com", :password => "123", :password_confirmation => "123")

age = ['3', '4', '5', '6', '7', '8', '9']
health = ['Leukemia', 'Lymphoma', 'Bone cancer', 'Brain Tumor']

k1 = Kid.create(:first_name => 'Josh', :last_name => 'Smith', :age => age.sample, :health => health.sample)
k2 = Kid.create(:first_name => 'Andrew', :last_name => 'Jones', :age => age.sample, :health => health.sample)
k3 = Kid.create(:first_name => 'David', :last_name => 'Williams', :age => age.sample, :health => health.sample)
k4 = Kid.create(:first_name => 'Samantha', :last_name => 'Brown', :age => age.sample, :health => health.sample)
k5 = Kid.create(:first_name => 'Amanda', :last_name => 'Miller', :age => age.sample, :health => health.sample)
k6 = Kid.create(:first_name => 'Lindsay', :last_name => 'Smith', :age => age.sample, :health => health.sample)
k7 = Kid.create(:first_name => 'Brad', :last_name => 'Jones', :age => age.sample, :health => health.sample)

p1.kids = [k1, k6]
p2.kids = [k2, k7]
p3.kids << k3
p4.kids << k4
p5.kids << k5

b1 = Benefactor.create(:first_name => 'Mike', :last_name => 'Jackson', :email => "b1@abc.com", :password => "123", :password_confirmation => "123", )
b1 = Benefactor.create(:first_name => 'George', :last_name => 'Clark', :email => "b2@abc.com", :password => "123", :password_confirmation => "123", )
b1 = Benefactor.create(:first_name => 'Ken', :last_name => 'Taylor', :email => "b3@abc.com", :password => "123", :password_confirmation => "123", )
b1 = Benefactor.create(:first_name => 'Mary', :last_name => 'Davis', :email => "b4@abc.com", :password => "123", :password_confirmation => "123", )
b1 = Benefactor.create(:first_name => 'Liz', :last_name => 'Wilson', :email => "b5@abc.com", :password => "123", :password_confirmation => "123", )

