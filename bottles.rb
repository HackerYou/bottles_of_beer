class Bottles
  def verse(number)
    if number == 0
      "No more bottles of beer on the wall, no more bottles of beer. Go to the store, get some more, 99 bottles of beer on the wall."
    elsif number == 1
      "1 bottle of beer on the wall, 1 bottle of beer. Take one down, pass it around, no more bottles of beer on the wall."
    elsif number == 2
      "2 bottles of beer on the wall, 2 bottles of beer. Take one down, pass it around, 1 bottle of beer on the wall."
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer. Take one down, pass it around, #{number - 1} bottles of beer on the wall."
    end
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
