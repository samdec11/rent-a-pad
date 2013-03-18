Hood.delete_all
User.delete_all

h1 = Hood.create(:name => 'Washington Heights', :image=>'maps/washington_heights.jpg', :location_id =>2)
h2 = Hood.create(:name => 'Chelsea', :image=>'maps/chelsea.jpg', :location_id =>20)
h3 = Hood.create(:name => 'Tribeca', :image =>'maps/tribeca.jpg', :location_id =>32)
h4 = Hood.create(:name => 'Upper West Side', :image=>'maps/upper_west_side.jpg', :location_id =>8)
h5 = Hood.create(:name => 'Lower East Side', :image=>'maps/lower_east_side.jpg', :location_id =>31)
Hood.create(:name=>'Inwood', :image=>'maps/inwood.jpg', :location_id =>1)
Hood.create(:name=>'Hamilton Heights', :image=>'maps/hamilton_heights.jpg', :location_id =>3)
Hood.create(:name=>'Harlem', :image=>'maps/harlem.jpg', :location_id =>5)
Hood.create(:name=>'Manhattanville', :image=>'maps/manhattanville.jpg', :location_id =>4)
Hood.create(:name=>'East Harlem', :image=>'maps/east_harlem.jpg', :location_id =>6)
Hood.create(:name=>'Morningside Heights', :image=>'maps/morningside_heights.jpg', :location_id =>7)
Hood.create(:name=>'Central Park', :image=>'maps/central_park.jpg', :location_id =>9)
Hood.create(:name=>'Carnegie Hill', :image=>'maps/carnegie_hill.jpg', :location_id =>10)
Hood.create(:name=>'Upper East side', :image=>'maps/upper_east_side.jpg', :location_id =>11)
Hood.create(:name=>'Columbus Circle', :image=>'maps/columbus_circle.jpg', :location_id =>13)
Hood.create(:name=>'Midtown', :image=>'maps/midtown.jpg', :location_id =>15)
Hood.create(:name=>'Sutton Place', :image=>'maps/sutton_place.jpg', :location_id =>12)
Hood.create(:name=>'Turtle Bay', :image=>'maps/turtle_bay.jpg', :location_id =>16)
Hood.create(:name=>'Clinton', :image=>'maps/clinton.jpg', :location_id =>14)
Hood.create(:name=>'Garment District', :image=>'maps/garment_district.jpg', :location_id =>17)
Hood.create(:name=>'Murray Hill', :image=>'maps/murray_hill.jpg', :location_id =>18)
Hood.create(:name=>'Tudor City', :image=>'maps/tudor_city.jpg', :location_id =>19)
Hood.create(:name=>'Gramercy', :image=>'maps/gramercy.jpg', :location_id =>22)
Hood.create(:name=>'Flatiron District', :image=>'maps/flatiron_district.jpg', :location_id =>21)
Hood.create(:name=>'West Village', :image=>'maps/west_village.jpg', :location_id =>24)
Hood.create(:name=>'Greenwich Village', :image=>'maps/greenwich_village.jpg', :location_id =>25)
Hood.create(:name=>'NoHo', :image=>'maps/noho.jpg', :location_id =>26)
Hood.create(:name=>'Stuyvesant Town', :image=>'maps/stuyvesant_town.jpg', :location_id =>25)
Hood.create(:name=>'East Village', :image=>'maps/east_village.jpg', :location_id =>27)
Hood.create(:name=>'SoHo', :image=>'maps/soho.jpg', :location_id =>28)
Hood.create(:name=>'Little Italy', :image=>'maps/little_italy.jpg', :location_id =>29)
Hood.create(:name=>'Chinatown', :image=>'maps/chinatown.jpg', :location_id =>30)
Hood.create(:name=>'Battery Park', :image =>'maps/battery_park.jpg', :location_id =>33)
Hood.create(:name=>'Financial District', :image =>'maps/financial_district.jpg', :location_id =>34)

u1 = User.create(:username =>'Sean123', :password => 'abc', :password_confirmation => 'abc', :name => 'Sean', :age => '25', :gender => 'Male', :email => 'samdec11@gmail.com', :image => 'users/sean.jpg', :description =>"I'm a friendly, generally quiet guy who keeps weird hours.", :occupation =>'Web developer', :sociability =>2, :sleep_hours =>2, :is_smoker =>false, :pets =>'Want', :roommate => {:max_age=>'30', :min_age=>'23', :gender=>'Either', :is_smoker=>false, :employed=>true}, :max_rent => '1000')
u2 = User.create(:username =>'Seth123', :password => 'abc', :password_confirmation => 'abc', :name => 'Seth', :age => '30', :gender => 'Male', :email => 'seth@gmail.com', :image => 'users/seth.jpg', :description =>"Hey guys! I like turtles and barbecue sauce.", :occupation =>'Actor', :sociability =>'3',:sleep_hours =>3, :is_smoker =>false, :pets =>'Have', :roommate => {:gender=>'Male'}, :max_rent => '1800')
u3 = User.create(:username =>'Lola123', :password => 'abc', :password_confirmation => 'abc', :name => 'Lola', :age => '19', :gender => 'Female', :email => 'lolita18@gmail.com', :image => 'users/lola.jpg', :description =>"Accepting applications for sugar daddies.", :occupation =>'Unemployed', :sociability =>3, :is_smoker =>true, :pets =>"Don't want", :roommate => {:max_age=>50, :min_age=>30, :gender=>'Male'}, :max_rent => '600')
u4 = User.create(:username =>'Stacey123', :password => 'abc', :password_confirmation => 'abc', :name => 'Stacey', :age => '28', :gender => 'Female', :email => 'stacey@stacey.com', :image => 'users/stacey.jpg', :description =>"I'm a hard-working professional seeking a quiet living environment.", :occupation =>'Lawyer', :sociability =>'0', :sleep_hours=>1, :is_smoker =>false, :pets =>"Don't want", :roommate => {:max_age=>'40', :min_age=>'25', :gender=>'Female'}, :max_rent => '2200')
u5 = User.create(:username =>'Fred123', :password => 'abc', :password_confirmation => 'abc', :name => 'Fred', :age => '32', :gender => 'Male', :email => 'fred@aol.com', :image => 'users/fred.jpg', :description =>"I'm your average Joe, hoping to find a good roommate and friend.", :occupation =>"Playwright", :sociability =>1, :is_smoker =>true, :sleep_hours=>3, :pets =>'Have', :roommate => {:max_age=>'40', :min_age=>'30', :gender=>'Either'}, :max_rent => '2000')
u6 = User.create(:username =>'George123', :password => 'abc', :password_confirmation => 'abc', :name => 'George', :age => '23', :gender => 'Male', :email => 'george@gmail.com', :image => 'users/george.jpg', :description =>"I'm fun-loving, active, and generally hard-of-hearing.", :occupation =>'Candy shop emplyee', :sociability =>3, :sleep_hours=>2, :is_smoker =>false, :pets =>'Want', :roommate => {:max_age=>30, :gender=>'Either'}, :max_rent => '800')
u7 = User.create(:username =>'Brook123', :password => 'abc', :password_confirmation => 'abc', :name => 'Brook', :age => '29', :gender => 'Female', :email => 'brook@gmail.com', :image => 'users/brook.jpg', :description =>"Hi, I'm Brook! I love to clean!", :occupation =>'Dog groomer', :sociability =>2, :sleep_hours=>2, :is_smoker =>false, :pets =>'Have', :roommate => {:gender=>'Either'}, :max_rent => '2000')
u8 = User.create(:username =>'Gabrielle123', :password => 'abc', :password_confirmation => 'abc', :name => 'Gabrielle', :age => '26', :gender => 'Female', :email => 'gabrielle@gmail.com', :image => 'users/gabrielle.jpg', :description =>"Hey, Gabrielle here. I grow my own vegetables and my dress is made out of wheat.", :occupation =>'Organic argiculturalist', :sociability =>3, :sleep_hours=>3, :is_smoker =>false, :pets =>'Have', :roommate => {:gender=>'Either'}, :max_rent => '900')
u9 = User.create(:username =>'Aaron123', :password => 'abc', :password_confirmation => 'abc', :name => 'Aaron', :age => '29', :gender => 'Male', :email => 'aaron@gmail.com', :image => 'users/aaron.jpg', :description =>"Super easy-going guy searchin' for a great roomie.", :occupation =>'Hammock tester', :sociability =>2, :sleep_hours=>2, :is_smoker =>false, :pets =>'Want', :roommate => {:gender=>'Either'}, :max_rent => '2000')

h1.users = [u1, u2, u3]
h2.users = [u1, u2, u4, u5]
h3.users = [u4, u5]
h4.users = [u1, u2, u3, u4, u5]
h5.users = [u1, u3, u5]