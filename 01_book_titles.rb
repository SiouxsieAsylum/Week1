class Book
    def title=(title)
        @title = title
    end

    def title
        little_words = ["a","an","and","or","if","as","the","of","in", "is","over"]
        array = @title.split
         array.map! do |word|
            unless little_words.include?(word)
                word.capitalize
            else
                word
            end
        end
        array[0].capitalize!
        array.join(" ")
    end
 end
