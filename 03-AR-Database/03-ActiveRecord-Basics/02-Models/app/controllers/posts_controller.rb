require_relative "../views/post_view.rb"

class PostsController
  def initialize
    @view = PostView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    index = Post.all
    @view.print_posts(index)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    post = Post.create(name: @view.ask_for_name, url: @view.ask_for_url)
    @view.print_successfully_created(post)
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    post_update = Post.find(@view.ask_for_id)
    post_update.update_attributes(name: @view.ask_for_name, url: @view.ask_for_url)
    @view.print_successfully_updated(post_update)
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    post_destroy = Post.find(@view.ask_for_id)
    post_destroy.destroy
    @view.print_successfully_destroyed(post_destroy)
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    post = Post.find(@view.ask_for_id)
    if post.votes == nil
      post.votes = 0
    end

    post.votes += 1
    post.save
    @view.print_successfully_upvoted(upvote)
  end
end