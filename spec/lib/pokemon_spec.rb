require 'spec_helper'

RSpec.describe Pokemon do
  describe ".new" do
    pokemon = Pokemon.new("Eevee", "Normal", "Run away", Date.parse("2015/11/08"))
    it "has a name" do
      expect(pokemon.name).to eq "Eevee"
    end
    it "has a poketype" do
      expect(pokemon.poketype).to eq "Normal"
    end
    it "has a ability" do
      expect(pokemon.ability).to eq "Run away"
    end
    it "has a birthday" do
      expect(pokemon.birthday).to be_a Date
    end
    it "have hit points" do
      pokemon2 = Pokemon.new("Eevee", "Normal", "Run away", Date.parse("2015/11/08"), 25)
      expect(pokemon.hit_points).to eq 50
      expect(pokemon2.hit_points).to eq 25
    end
    it "have strength" do
      expect(pokemon.strength).to eq 0
    end
  end

  describe "#train" do
    pokemon = Pokemon.new("Eevee", "Normal", "Run away", Date.parse("2015/11/08"))
    context " will increase the strength of the pokemon by random number" do
      it "return high strength" do
        pokemon.train
        expect(pokemon.strength).to be > 0
      end
    end
  end

  describe "#attack!(pokemon)" do
    let(:eevee) { Pokemon.new("Eevee", "Normal", "Run away", Date.parse("2015/11/08")) }
    let(:snorlax) { Pokemon.new("Snorlax", "Normal", "Sleeping", Date.parse("2015/11/08")) }

    context "lowers the hit points for the passed in pokemon based on strength of pokemon one" do
      it "lowers hit points for pokemon 2" do
        attack_strength = eevee.strength / 2
        expect(eevee.attack!(snorlax)).to eq(snorlax.hit_points - attack_strength)
      end
    end
  end

  describe "#ready_to_evolve?" do
    let(:older_pokemon) { Pokemon.new("Eevee", "Normal", "Run away", Date.parse("2013/11/08")) }
    let(:younger_pokemon) { Pokemon.new("Snorlax", "Normal", "Sleeping", Date.today) }

    context "its older than one year to evolve" do
      it "returns true" do
        expect(older_pokemon.ready_to_evolve?).to eq true
      end
      it "returns false" do
        expect(younger_pokemon.ready_to_evolve?).to eq false
      end
    end
  end
end
