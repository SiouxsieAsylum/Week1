def translate(phrase)
    words = phrase.split

    words.map do |word|
        if word.include? "qu"
            word << word.slice(0..(word.index("u"))) + "ay"
            word[0..(word.index("u"))] = ""
        elsif word.downcase.index(/[aeiou]/) != 0
             word << word.slice(0..(word.index(/[aeiou]/)-1)) + "ay"
             word[0..word.index(/[aeiou]/)-1] = ""
        else
            word << "ay"
        end
    end
   words.join(" ")
end
