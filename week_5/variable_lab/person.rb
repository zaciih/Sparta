class Person

    def name
        # create a name variable
        name = "Zac"
    end

    def age
        # create age variable here
        age = 23

    end

    def children
        # create children array here

        array = ["child1", "child2", "child3", "child4"]

    end

    def address
        # create address hash here
        address = {
          :house_number => 470,
          :street => "gillott road",
          :town => "birmingham",
          :county => "",
          :postcode => "B16 9LH",
          :email_addresses => ["zharrison@spartaglobal.com", "anotheremail@gmail.com"]
        }
    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }

        # create password variable here using the variables above
        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"

    end

end
