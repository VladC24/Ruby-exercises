
# I'm a client working for the Blank House. 
# We want to display positive tweets about our president on our website. 
# However, our president is kind of unpopular, and we pretty much only receive negative press. 
# Write me a program that filters out the following words from tweets: 
# "sucks", "bad", "hate", "foolish", and the most popular: "danger to society". 
# Replace each negative word or phrase them with the word "CENSORED". 
# Some test tweets have been provided for you.	

test_tweets = [
 "This president sucks!",
 "I hate this Blank House!",
 "I can't believe we're living with such a bad leadership. We were so foolish",
 "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
 ]
banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]
puts "Please input your tweet."
input = gets.chomp
index = 0
while index < banned_phrases.length
  if input.include?(banned_phrases[index]) == true
     input.gsub!(banned_phrases[index],"CENSORED")     # we replace the word found in the tweet with CENSORED
  end
  index += 1
end
puts "The tweet has been updated: " + input