class Owner
  # code goes here
  attr_accessor :dogs, :cats
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
    Cat.all.select{|cat| cat.owner = self}
    
  end
    
  def dogs 
    Dog.all.select{|dog| dog.owner = self}
  end
    
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each{|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    cats.each{|cat| cat.mood = "happy"}
    
  end
  
  def sell_pets
    cats.select{|cat| cat.mood = "nervous"}
    dogs.select{|dog| dog.mood = "nervous"}
    cats.select{|cat| cat.owner = nil}
    dogs.select{|dog| dog.owner = nil}
  end
  
  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  
  
  
end