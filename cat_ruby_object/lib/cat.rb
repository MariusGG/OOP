
class Cat

  attr_accessor :mood, :hunger, :energy

  def initialize
    @mood = 50
    @hunger = 50
    @energy = 50
  end

  def feed
    @mood -= 10
    @hunger -= 20
    @energy += 10
    meow_if_mood
    meow_if_hunger
    meow_if_energy
  end

  def sleep
    @energy += 10
    meow_if_mood
    meow_if_hunger
    meow_if_energy
  end

  def play
    @mood += 10
    @hunger += 10
    @energy -= 20
    meow_if_mood
    meow_if_hunger
    meow_if_energy
  end

  def show_status
    puts "Mood : #{@mood}, Hunger : #{@hunger}, Energy : #{@energy} "
  end

  private

  def meow_if_hunger
     "Meow! feed me or play" if @hunger >= 80
  end

  def meow_if_mood
    "Meow! lets play" if @mood < 50
  end

  def meow_if_energy
    if @energy < 30
     "Meow! I need to sleep"
   else @energy > 30
     "Meow! get more energy"
   end
  end
end
