class Review

  attr_accessor :customer, :restaurant, :review

  ALL = []


  # for an instance method
  #  a = A.new
  #  a.c

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    ALL << self
  end
  #sucks = Review.new("bob smith", "XOX") => #<Review:0x007f9b644118b8 @customer="bob smith", @restaurant="XOX">

  # + Review.all
  #   + returns all of the reviews
  def self.all
    ALL
  end
  #Review.all => [#<Review:0x007fea3037c090 @customer="bob smith", @restaurant="XOX">]

#########Review is what connects restaurants and customers
#########didn't finish :(

  # + Review#customer
  #   + returns the customer for that given review
  def self.customer

  end

  # + Review#restaurant
  #   + returns the restaurant for that given review
  def self.restaurant

  end


end #end class
