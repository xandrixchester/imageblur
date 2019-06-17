class Dog
  attr_accessor :pangalan, :breed

  def initialize(pangalan, breed)
    self.pangalan = pangalan
    self.breed = breed
  end

  def output_dog
    puts "Calls for a dog. Their dog, #{self.pangalan}, is a #{self.breed}."
  end

  def self.random_dog
    Dog.new(rand(:Bella), :Shi_Tzu)
  end

end


class Whistle

  Array1 = [:Bella, :Louie, :Ella, :Zipper, :Balto, :Al, :Roach]
  Array2 = [:Shi_Tzu, :German_Sheperd, :Chihuahua, :Poodle, :Bulldog, :Pug, :Beagle, :Pitbull]

  def initialize
    @dogs = []
    @dogs << Dog.new(Array1.sample, Array2.sample)
  end

  def shuffle
    @dogs.shuffle!
  end

  def deal
    @dogs.each do |dog|
      dog.output_dog
    end
  end



end

whistle = Whistle.new
whistle.shuffle
whistle.deal

