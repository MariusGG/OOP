class Cat:
  def __init__(self):
    self.mood = 50
    self.hunger = 50
    self.energy = 50

  def feed(self):
    self.mood -= 10
    self.hunger -= 20
    self.energy += 10
    print("mood =>", self.mood, "hunger =>", self.hunger, "energy =>", self.energy)
    if self.mood < 50:
        print "Meow! feed me"
    elif self.hunger > 80:
        print "Meow! lets play"
    elif self.energy < 30:
        print "Meow! I need to sleep"

  def sleep(self):
    self.energy += 10
    print("mood =>", self.mood, "hunger =>", self.hunger, "energy =>", self.energy)
    if self.energy > 30:
        print "Meow! get more energy"

  def play(self):
    self.mood += 10
    self.hunger += 10
    self.energy -= 20
    print("mood =>", self.mood, "hunger =>", self.hunger, "energy =>", self.energy)
    if self.mood < 50:
        print "Meow! feed me"
    elif self.hunger > 80:
        print "Meow! lets play"
    elif self.energy < 30:
        print "Meow! I need to sleep"

# I will need to learn how to pass functions within functions so I can the functions below.

  # def print_info(self):
  #   print("mood =>", self.mood, "hunger =>", self.hunger, "energy =>", self.energy)

  # def meow_conditions(slef):
  #   if self.hunger > 80:
  #       print "Meow! feed me"
  #   elif self.mood < 30:
  #       print "Meow! lets play"
  #   elif self.energy < 30:
  #       print "Meow! I need to sleep"
  #
