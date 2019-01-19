class Cat{
    constructor(_mood, _hunger, _energy) {
    const mood = 50;
    const hunger = 50;
    const energy = 50;
  }

  feed() {
    this.mood -= 10
    this.hunger -= 20
    this.energy += 10
  }
  sleep() {
    this.energy += 10
  }

  play() {
    this.mood += 10
    this.hunger += 10
    this.energy -= 20
  }


}
