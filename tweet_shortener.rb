def dictionary
  {
     "hello" => "hi",
 		"two" => "2",
 		"to" => "2",
 		"too" =>"2",
 		"for" => "4",
 		"four" => "4",
 		"be" => "b",
 		"you" => "u",
 		"at" => "@",
 		"and" => "&"}
  end

  def word_substituter(tweet)
  tweet_array = tweet.split
  tweet_array.each do |word|
  if dictionary.keys.include?(word.downcase)
  word.replace(dictionary[word.downcase])
  end
  end
  tweet_array.join(" ")
  end

  def bulk_tweet_shortener(tweets)
    tweets.each do |tweets|
      puts word_substituter(tweets)
    end
  end

  def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
  end

  def shortened_tweet_truncator(tweet)
    if tweet.length < 140
      return tweet
    elsif tweet.length > 140
      word_substituter(tweet)
      if tweet.length > 140
        tweet = tweet[0..136] + "..."
      else
        tweet
      end
    end
  end
