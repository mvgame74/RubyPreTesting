test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

test_tweets.each do |tweet|
  tweet.split.each do |word|
    result = word
    banned_phrases.each do |banned|
      if word.include?(banned)
        result = "CENSORED"
      end
    end
    print result + " "
  end
  puts ""
end
