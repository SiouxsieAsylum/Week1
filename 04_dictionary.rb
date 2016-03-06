class Dictionary
    def initialize(words = {})
        @words = words
    end

    def add(pair)
        if pair.class == String
            @words[pair] = nil
        else
            @words.merge!(pair)
        end

    end

    def entries
        @words
    end

    def keywords
         @words.keys.sort!
    end

    def include?(keyword)
        @words.has_key?(keyword) ? true : false
    end

    def find(string)
        entry = {}
        @words.each_pair{|k,v| k.include?(string) ? entry[k] = v : false }
        return entry
    end

    def printable
	    printouts = @words.to_a.sort
	        printouts.map! do |key,value|
	            "[#{key}] \"#{value}\""
	        end
  	    printouts.join("\n")
	end

end
