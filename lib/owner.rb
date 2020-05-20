class Owner
  # code goes here
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @cats = []
    @dogs = []
  end
  
  def name
    @name
  end
  
  def species
     @species = "human"
     @species
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.each{|cat| cat.owner = self}
  end
    
  def dogs 
    Dog.all.each{|dog| dog.owner = self}
  end
    
  def buy_cat(name, self)
    Cat.new(name, self)
    @cats
  end
  
  def buy_dog(name)
    name = Dog.new(name, self)
    @dogs << name
  end
  
  def walk_dogs
    dogs.each{|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    cats.each{|cat| cat.mood = "happy"}
    
  end
  
  def sell_pets
    cats.each{|cat| cat.mood = "nervous"}
    dogs.each{|dog| dog.mood = "nervous"}
    cats.each{|cat| cat.owner = nil}
    dogs.each{|dog| dog.owner = nil}
  end
  
  def list_pets
    "I have #{dogs.count} dogs and #{cats.count} cats."
  end
  
  
  
end