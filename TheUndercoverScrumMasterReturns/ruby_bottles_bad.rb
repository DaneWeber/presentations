# The following outputs the same as the above code.
# The computer likes it just the same.
class Bottles
  def b() "bottles of beer" end
  def v(n) "#{n<1?"no more": n} " + b end
  def vn(n) v(n) + " on the wall, " + v(n) + "." end
  def t(n) n<1?"Go to the store and buy some more, " + v(99):
    "Take #{n>1?"one": "it"} down and pass it around, " + v(n-1) end
  def verse(n) "#{vn(n).capitalize}\n#{t(n)} on the wall.\n" end
  def verses(f, t) f.downto(t).map { |n| verse(n)}.join("\n") end
  def song() verses(99, 0) end
end
