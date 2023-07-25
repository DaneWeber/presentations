class Bottles
  def verse(number)
    return zero_bottles_verse if number == 0
    return one_bottles_verse if number == 1

    "#{number} bottles of beer on the wall, " +
    "#{number} bottles of beer.\n" +
    "Take one down and pass it around, " +
    "#{number - 1} bottles of beer on the wall.\n"
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def one_bottles_verse
    "1 bottles of beer on the wall, " +
    "1 bottles of beer.\n" +
    "Take it down and pass it around, " +
    "no more bottles of beer on the wall.\n"
  end

  def zero_bottles_verse
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end
end
