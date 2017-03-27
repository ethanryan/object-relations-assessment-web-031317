class Restaurant
  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  #xox = Restaurant.new("XOX") => #<Restaurant:0x007fd910a43828 @name="XOX">

  # + Restaurant.all
  #   + returns an array of all restaurants
  def self.all
    ALL
  end
  #Restaurant.all => [#<Restaurant:0x007fa7f5a8b840 @name="XOX">]


  # + Restaurant.find_by_name(name)
  #   + given a string of restaurant name,
  #   + returns the first restaurant that matches

  def self.find_by_name(name)
    ALL.select do |each_name|
      each_name.name == name
    end.first #end select, return first name from array
  end #end method

  #Restaurant.find_by_name("XOX") => #<Restaurant:0x007fa7f5a8b840 @name="XOX">


  # + Restaurant#reviews
  #   + returns an array of all reviews for that restaurant
  #
  # + Restaurant#customers
  #   + should return all of the customers who have written reviews
  #   + of that restaurant.

end #end class
