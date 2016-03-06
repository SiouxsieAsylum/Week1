def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num = 2)
  phrase = ""
  num*times {|w| phrase << word}
  phrase.chop
end

def start_of_word(word,n)
  word[0..(n - 1)]
end

def first_word(phrase)
  phrase.slice(/\w+\s/).chop
end

def titleize(phrase)
  little_words = ["a","an","and","or","if","as","the","of","in", "is","over"]
  title = phrase.split(" ")
    title.map! do |word|
      unless little_words.include? word
        word.capitalize
      else
        word
      end
    end
     title[0].capitalize
     title.join(" ")
end
