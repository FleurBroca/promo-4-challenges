class PostView
  # TODO: implement some methods here when controller needs to `puts` or `gets`

  def print_posts(posts)
    puts "Here is a list of all posts:"
    posts.each do |post|
      puts "#{post.id} - '#{post.name}' - '#{post.url}', created at '#{post.created_at}' - '#{post.votes}' votes."
    end
  end

  def ask_for_name
    puts "Title?"
    print "> "
    gets.chomp
  end

  def ask_for_url
    puts "URL?"
    print "> "
    gets.chomp
  end

  def print_successfully_created(post)
    puts "Post '#{post.name}' has been successfully created."
  end

  def print_successfully_updated(post)
    puts "Post '#{post.name}' has been successfully updated."
  end

  def print_successfully_destroyed(post)
    puts "Post '#{post.name}' has been successfully destroyed."
  end

  def print_successfully_upvoted(post)
    puts "Post '#{post.name}' has been successfully upvoted."
  end

  def ask_for_id
    puts "What ID post are you looking for?"
    gets.chomp
  end

end