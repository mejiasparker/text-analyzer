#lines = File.readlines("text.txt") #uses readlines method to push lines into an array

sample = "Among other public buildings in a certain town, which for many 
reasons it will be prudent to refrain from mentioning, and to 
which I will assign no fictitious name, there is one anciently 
common to most towns, great or small: to wit, a workhouse; and 
in this workhouse was born; on a day and date which I need not 
trouble myself to repeat, inasmuch as it can be of no possible 
consequence to the reader, in this stage of the business at all 
events; the item of mortality whose name is prefixed to the head 
of this chapter."


def linecount(user_text)
    lines = user_text.split("\n")
    line_count = lines.size
    return "#{line_count} lines"
end

def totalchars(user_text)
   total_characters = user_text.length
   return "#{total_characters} characters"
end

def nowhitespace(user_text)
    total_chars_nospaces = user_text.gsub(/\s+/, '').length 
    return "#{total_chars_nospaces} characters (excluding spaces)"
end

def wordcount(user_text)
    word_count = user_text.split.length
    return "#{word_count} words"
end

def sentences(user_text)
    sentence_count = user_text.split(/\.|\?|!/).length
    return "#{sentence_count} sentences"
end

def paragraphs(user_text)
    paragraph_count = user_text.split(/\n\n/).length
    return "#{paragraph_count} paragraphs"
end

def avg_sentences(user_text)
    sentence_count = user_text.split(/\.|\?|!/).length
    paragraph_count = user_text.split(/\n\n/).length
    return "#{sentence_count / paragraph_count} sentences per paragraph (average)"
end

def avg_words(user_text)
    word_count = user_text.split.length
    sentence_count = user_text.split(/\.|\?|!/).length
    return "#{word_count / sentence_count} words per sentence (average)"
end

def keywords(user_text)
    stopwords = %w{the a by on for of are with just but and to the my I has some in}
    all_words = user_text.scan(/\w+/)
    keywords = all_words.reject { |word| stopwords.include?(word)}
    percent_keywords = ((keywords.length / all_words.length.to_f) * 100).to_i
    return "#{percent_keywords}% of words are keywords"
end




=begin
puts "this is a test".scan(/\w/).join
 => thisisatest
puts "this is a test".scan(/\w+/).join(-)
 => this-is-a-test
the second time, scan has looked for all GROUPS of alphanumeric characters.
puts "this is a test".scan(/\w+/).length
 => 4
=end

=begin

#Summarize the text by picking some choice sentences
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
one_third = sentences.length / 3
#last_third = sentences.length - one_third
sorted_sentences = sentences.sort_by { |sentence| sentence.length }
best_sentences = sorted_sentences.slice(one_third, one_third + 1)
puts best_sentences.join

=end