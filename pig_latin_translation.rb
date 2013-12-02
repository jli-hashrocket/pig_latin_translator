class PigLatinTranslation
  def initialize(phrase)
    @phrase = phrase
  end

  #provide the pig latin translation
  def translate
    words_arr = words
    words_arr = words_arr.map do |word|
      if starts_with_vowel?(word)
        word + "hey"
      elsif !starts_with_vowel?(word)
        f_char = word.slice(0)
        word[1..-1] + f_char.downcase + "ay"
      else
        word
      end
    end
    puts words_arr.join(" ")
  end

  private
  #an array of words in the phrase
  def words
    @phrase.split(" ")
  end

  def starts_with_vowel?(word)
    vowels = ['a','e','i','o','u']
    return true if vowels.include?(word[0])
    return false
  end
end
