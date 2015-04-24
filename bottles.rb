# 99 bottles
# 1 bottle
# 0 bottles

class Stash
  attr_accessor :number
  def initialize(number)
    self.number = number
  end

  def bottle_noun
    if self.number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def bottle_number
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def next
    if number == 0
      Stash.new(99)
    else
      Stash.new(number - 1)
    end
  end

  def next_thing
    if number == 0
      "Go to the store, get some more"
    else
      "Take one down, pass it around"
    end
  end

end

class Bottles
  def verse(number)
    stash = Stash.new(number)
    next_stash = stash.next

    "#{stash.bottle_number.capitalize} #{stash.bottle_noun} of beer on the wall, " +
    "#{stash.bottle_number} #{stash.bottle_noun} of beer. " +
    "#{stash.next_thing}, " +
    "#{next_stash.bottle_number} #{next_stash.bottle_noun} of beer on the wall."
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
