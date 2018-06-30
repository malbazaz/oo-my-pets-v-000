class Owner

@@all = []
@@count = @@all.size

  attr_accessor :pets, :name
  attr_reader :name, :species, :say_species, :all
  attr_writer 
  
  def initialize(name)
    @name = name 
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self 
  end 

  def self.count 
    @@count 
  end 
  
  def name 
    @name 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.reset_all
    @@all = []
  end 
  
  def say_species
   "I am a human." 
  end 
  
  def buy_fish(name)
    new_fish = Fish.new(name)
  end 
  
  def buy_cat(name)
    
  end 
  
  def buy_dog(name)
  #make a new instance of pet, initialize with name 
  #associate that new pet instance to owner, adding it to @pets
  end 
  
  def walk_dogs
    @pets[:dogs].each do |dog|
     dog.mood = "happy"
    end 
  end 
  
  def play_with_cats
    @pets[:cats].each do |cat|
     cat.mood = "happy"
    end 
  end 

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
  end
  
  def list_pets
  
  "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end 
  
  def sell_pets 
   @pets[:dogs].each do |dog|
        dog.mood = "nervous"
      end 
   @pets[:cats].each do |cat|
        cat.mood = "nervous"
      end 
  @pets[:fishes].each do |fish|
        fish.mood = "nervous"
      end 
  end

end 