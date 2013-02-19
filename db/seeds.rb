Hood.delete_all
User.delete_all

h1 = Hood.create(:name => 'Washington Heights', :image=>'maps/washington_heights.jpg')
h2 = Hood.create(:name => 'Chelsea', :image=>'maps/chelsea.jpg')
h3 = Hood.create(:name => 'Tribeca', :image =>'maps/tribeca.jpg')
h4 = Hood.create(:name => 'Upper West Side', :image=>'maps/upper_west_side.jpg')
h5 = Hood.create(:name => 'Lower East Side', :image=>'maps/lower_east_side.jpg')
Hood.create(:name=>'Inwood', :image=>'maps/inwood.jpg')
Hood.create(:name=>'Hamilton Heights', :image=>'maps/hamilton_heights.jpg')
Hood.create(:name=>'Harlem', :image=>'maps/harlem.jpg')
Hood.create(:name=>'Manhattanville', :image=>'maps/manhattanville.jpg')
Hood.create(:name=>'East Harlem', :image=>'maps/east_harlem.jpg')
Hood.create(:name=>'Morningside Heights', :image=>'maps/morningside_heights.jpg')
Hood.create(:name=>'Central Park', :image=>'maps/central_park.jpg')
Hood.create(:name=>'Carnegie Hill', :image=>'maps/carnegie_hill.jpg')
Hood.create(:name=>'Upper East side', :image=>'maps/upper_east_side.jpg')
Hood.create(:name=>'Columbus Circle', :image=>'maps/columbus_circle.jpg')
Hood.create(:name=>'Midtown', :image=>'maps/midtown.jpg')
Hood.create(:name=>'Sutton Place', :image=>'maps/sutton_place.jpg')
Hood.create(:name=>'Turtle Bay', :image=>'maps/turtle_bay.jpg')
Hood.create(:name=>'Clinton', :image=>'maps/clinton.jpg')
Hood.create(:name=>'Garment District', :image=>'maps/garment_district.jpg')
Hood.create(:name=>'Murray Hill', :image=>'maps/murray_hill.jpg')
Hood.create(:name=>'Tudor City', :image=>'maps/tudor_city.jpg')
Hood.create(:name=>'Gramercy', :image=>'maps/gramercy.jpg')
Hood.create(:name=>'Flatiron District', :image=>'maps/flatiron_district.jpg')
Hood.create(:name=>'West Village', :image=>'maps/west_village.jpg')
Hood.create(:name=>'Greenwich Village', :image=>'maps/greenwich_village.jpg')
Hood.create(:name=>'NoHo', :image=>'maps/noho.jpg')
Hood.create(:name=>'Stuyvesant Town', :image=>'maps/stuyvesant_town.jpg')
Hood.create(:name=>'East Village', :image=>'maps/east_village.jpg')
Hood.create(:name=>'SoHo', :image=>'maps/soho.jpg')
Hood.create(:name=>'Little Italy', :image=>'maps/little_italy.jpg')
Hood.create(:name=>'Chinatown', :image=>'maps/chinatown.jpg')
Hood.create(:name=>'Battery Park', :image =>'maps/battery_park.jpg')
Hood.create(:name=>'Financial District', :image =>'maps/financial_district.jpg')

u1 = User.create(:name => 'Sean', :password => 'abc123', :age => '25', :gender => 'Male', :email => 'samdec11@gmail.com', :max_rent => '1000', :image => 'Me2.jpg')
u2 = User.create(:name => 'Seth', :password => 'abc123', :age => '30', :gender => 'Male', :email => 'seth@gmail.com', :max_rent => '1800', :image => 'http://www.bio27.com/images/ph266_seth_green_image.jpg')
u3 = User.create(:name => 'Lola', :password => 'abc123', :age => '21', :gender => 'Female', :email => 'lolita18@gmail.com', :max_rent => '600', :image => 'http://images6.fanpop.com/image/photos/32500000/Sue-Lyon-in-Lolita-bert-stern-32599524-500-671.jpg')
u4 = User.create(:name => 'Stacey', :password => 'abc123', :age => '28', :gender => 'Female', :email => 'stacey@stacey.com', :max_rent => '2200', :image => 'http://ronewiznation.files.wordpress.com/2011/02/stacey-dash-0.jpg')
u5 = User.create(:name => 'Fred', :password => 'abc123', :age => '32', :gender => 'Male', :email => 'fred@aol.com', :max_rent => '2000', :image => 'http://fred-thomas.co.uk/assets//Fred1.jpg')

h1.users = [u1, u2, u3]
h2.users = [u1, u2, u4, u5]
h3.users = [u4, u5]
h4.users = [u1, u2, u3, u4, u5]
h5.users = [u1, u3, u5]