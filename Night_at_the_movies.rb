movies = {
  Transformers: 8,
  Jumanji: 7.3
  }
puts "What would you like to do? Choose between Add, Update, Display or Delete. "
choice = gets.chomp.capitalize!
case choice
when "Add"
  puts "What movie would you like to add? "
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "How would you rate the movie? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "Added!"
  else 
    puts "This movie is already in the list"
  end
when "Update"
  puts "What movie title do you want to update the list with?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "The movie is not in the list"
  else
    puts "What is your new rating for this movie?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with #{rating} rating"
  end
when "Display"
  movies.each do |movie, rating|
  puts "#{movie}: #{rating}"
  end
when "Delete"
  puts "What movie would you like to delete?"
  delete = gets.chomp
  if movies[title.to_sym].nil?
    puts "There is no movie with this name in the list."
  else 
    movies.delete(title.to_sym)
    puts "#{title} has been removed from the list."
  end
else
  puts "Error!"
end
