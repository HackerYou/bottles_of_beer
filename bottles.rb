class Bottles
  def verse(number)
    "#{bottle_number(number).capitalize} #{bottle_noun(number)} of beer on the wall, #{bottle_number(number)} #{bottle_noun(number)} of beer. #{next_thing(number)}, #{bottle_number(next_number(number))} #{bottle_noun(next_number(number))} of beer on the wall."
  end

  def verses(upper, lower)
    upper.downto(lower).map do |verse_number|
      verse(verse_number)
    end.join("\n")
  end

  def song
    verses(99,0)
  end

private

  def next_number(number)
    if number == 0
      99
    else
      number - 1
    end
  end

  def next_thing(number)
    if number == 0
      "Go to the store, get some more"
    else
      "Take one down, pass it around"
    end
  end

  def bottle_number(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def bottle_noun(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end
end
