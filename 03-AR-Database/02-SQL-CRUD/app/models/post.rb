# You can use a global variable, DB, built as is:
# DB = SQLite3::Database.new(file)

class Post
  # TODO: implement some reader and/or writers
  attr_reader :id, :date, :votes
  attr_accessor :title, :url

  def initialize(options = {})
    # TODO: initialize instance variables from the hash options.
    @id = options[:id]
    @title = options[:title]
    @url = options[:url]

    # if options[:date].nil?
    #   @date = Time.now
    # else
    #   @date = options[:date]
    # end

     @date = options[:date] || Time.now

     @votes = options[:votes] || 0
  end

  # TODO: implement all the class methods and instance methods
  #       to have a full CRUD support on your Post model

  def save
    if @id != nil
      DB.execute("UPDATE posts SET id = '#{@id}', title = '#{@title}'")
    else
      DB.execute("INSERT INTO posts (title, url, date, votes) VALUES ('#{@title}', '#{@url}', #{@date.to_i}, #{@votes})")
      @id = DB.last_insert_row_id
    end
  end

  def self.find(id)
    query = DB.execute("SELECT * FROM posts WHERE id = #{id}").flatten
    if query == []
      return nil
    else
      return Post.new({ id: query[0], title: query[1], url: query[2], date: Time.at(query[3]), votes: query[4] })
    end
  end

  def create
    DB.execute("INSERT INTO posts (title, url) VALUES (‘#{@title}’, '#{@url}')")
    Post.new.save
  end

  def read
    DB.execute("SELECT posts (title, url) VALUES (‘#{@title}’, '#{@url}') WHERE id = '#{@id}'")
  end

  def update
    DB.execute("UPDATE posts (title, url) SET VALUES (‘#{@title}’, '#{@url}') WHERE id = '#{@id}'")
    Post.new.save
  end

  def destroy
    DB.execute("DELETE FROM posts WHERE id = '#{@id}'")
    Post.new.save
  end

  def upvote
    @votes += 1
    Post.new.save
  end

  def self.all
    query = DB.execute("SELECT * FROM posts")
    posts = []
    query.each do |row|
      id = row[0]
      title = row[1]
      url = row[2]
      date = Time.at(row[3])
      votes = row[4]
      posts << Post.new({ id: id, title: title, url: url, date: date, votes: votes })
    end
    return posts
  end
end


