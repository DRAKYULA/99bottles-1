class Bottles
  def song
    verses(99, 0)
  end

  def verses(hi, lo)
    verses = []
    [*hi.downto(lo)].each do |n|
      verses << verse(n)
    end
    verses.join("\n")
  end

  def verse(n)
    <<-VERSE
#{build_first(n)}
#{build_second(n)}
    VERSE
  end

  def pluralize(n)
    if n > 1
      "#{n} bottles"
    elsif n == 1
      "1 bottle"
    else
      "no more bottles"
    end
  end

  def it_or_one(n)
    n >= 2 ? "one" : "it"
  end

  def build_first(n)
    "#{pluralize(n).capitalize} of beer on the wall, #{pluralize(n)} of beer."
  end

  def build_second(n)
    if n > 0
      "Take #{it_or_one(n)} down and pass it around, #{pluralize(n-1)} of beer on the wall."
    else
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    end
  end
end
