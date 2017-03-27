#ruby tools/console.rb

class Customer

  attr_accessor :first_name, :last_name

  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    ALL << self
  end

  #bob = Customer.new("bob", "smith")

  def full_name
    "#{first_name} #{last_name}"
  end

  #bob.full_name => "bob smith"

  # Build the following methods on the customer class
  # + Customer.all
  #   + should return all of the customers
  def self.all
    ALL
  end
  #Customer.all => [#<Customer:0x007ff10f36c1a0 @first_name="bob", @last_name="smith">]


  # + Customer.find_by_name(name)
  #   + given a string of a full name, returns the first customer
  #whose full name matches
  def self.find_by_name(full_name)
    ALL.select do |each_name|
      each_name.full_name == full_name
    end.first #end select, return first name from array
  end #end method
  #Customer.find_by_name("bob smith") => #<Customer:0x007fd038856e88 @first_name="bob", @last_name="smith">



  # + Customer.find_all_by_first_name(name)
  #   + given a string of a first name, returns an array
  #containing all customers with that first name
  def self.find_all_by_first_name(first_name)
    ALL.map do |each_name|
      each_name.first_name == first_name
    end
  end #end method
  #Customer.find_all_by_first_name("bob") => [true]
  ####why doesn't this return array of ["bob smith"] ??

  # + Customer.all_names
  #   + should return an array of all of the customer full names
  def self.all_names
    ALL
  end
  #Customer.all_names => [#<Customer:0x007f8b7ebccff8 @first_name="bob", @last_name="smith">]

########fix this:::::::::
########fix this:::::::::
########fix this:::::::::
  # + Customer#add_review(restaurant, content)
  #   + given some content and a restaurant, creates a new review
  #and associates it with that customer and that restaurant
  def self.add_review(restaurant, content)
    new_review = Review.new(content)
    new_review << self ####<<<<----- need to put this in review file
  end

end #end class
