class Aquarium # a simple  form of composition
  attr_reader  :fish

  def initalize(args)
    @fish = args[:fish]
  end

end


class Fish
  attr_reader :age, :stomach

  def initialize(args)
  @stomach = args.fetch(:stomach, [ ])
  @age = args.fetch(:age, 0)
  @type = args[:type]
  end

# duplicate behaviors Module and Mix-in
  def breathe
  "i get oxygen from the water"
  end

  def swim
  "<-------->"
  end

end

class Goldfish < Fish

end


class  Oscar < Fish

end

module Fishable
    def breathe
  "i get oxygen from the water"
  end

  def swim
  "<-------->"
  end
end

# This will find super (not limited to initialize but usually there)
goldie = Goldfish.new({shininess: 5})
oscie = Oscar.new({})
fish = [goldie, oscie]
my_aq = Aquarium.new({fish: fish})