module FakerHelpers

  def first_name
    Faker::WorldOfWarcraft.hero
  end

  def last_name
    'of ' + Faker::Witcher.location
  end

  def date
    Faker::Date.forward(69)
  end

end
