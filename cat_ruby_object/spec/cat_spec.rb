require 'cat'

describe Cat do
  let(:felix) { Cat.new }

  context '#initialize' do
    it "has a mood level of o" do
      expect(felix.mood).to eq 50
    end

    it "has a hunger level which starts at 0" do
      expect(felix.hunger).to eq 50
    end

    it "has an engery level whic starts at 0" do
      expect(felix.energy).to eq 50
    end

  end

  it "allows you to feed the cat" do
    expect { felix.feed }.to change { felix.hunger }.by(-20)
    expect { felix.feed }.to change { felix.mood }.by(-10)
    expect { felix.feed }.to change { felix.energy }.by(10)
  end

  it "allows you to put cat to sleep" do
    expect { felix.sleep }.to change { felix.energy }.by(10)
  end

  it "allows you to play with the cat" do
    expect { felix.play}.to change { felix.hunger }.by(10)
    expect { felix.play }.to change { felix.mood }.by(10)
    expect { felix.play }.to change { felix.energy }.by(-20)
  end

  it "alerts if hunger is below 50" do
    felix.play
    felix.play
    expect(felix.hunger).to eq 70
  end

  it "alerts if mood is below 50" do
    felix.feed
    expect(felix.mood).to eq 40
  end

  it "alerts if energy is below 50" do
    felix.play
    expect(felix.energy).to eq 30
  end

end
