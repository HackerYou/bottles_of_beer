# 99 bottles
# 1 bottle
# 0 bottles

class Stash
  def self.build(number)
    if number == 0
      EmptyStash.new
    elsif number == 1
      SingleStash.new
    else
      Stash.new(number)
    end
  end

  attr_accessor :number
  def initialize(number)
    self.number = number
  end

  def to_s
    "#{bottle_number} #{bottle_noun}"
  end

  def bottle_noun
    "bottles"
  end

  def bottle_number
    number.to_s
  end

  def next
    Stash.build(number - 1)
  end

  def next_thing
    "Take one down, pass it around"
  end

end

class EmptyStash < Stash
  def initialize
    super(0)
  end

  def bottle_number
    "no more"
  end

  def next
    Stash.new(99)
  end

  def next_thing
    "Go to the store, get some more"
  end
end

class SingleStash < Stash
  def initialize
    super(1)
  end

  def bottle_noun
    "bottle"
  end

  def next
    EmptyStash.new
  end
end

class Bottles
  def verse(number)
    stash = Stash.build(number)

    "#{stash.to_s.capitalize} of beer on the wall, " +
    "#{stash} of beer. " +
    "#{stash.next_thing}, " +
    "#{stash.next} of beer on the wall."
  end

  def verses(upper, lower)
    upper.downto(lower).map do |verse_number|
      verse(verse_number)
    end.join("\n")
  end

  def song
    verses(99,0)
  end

end
