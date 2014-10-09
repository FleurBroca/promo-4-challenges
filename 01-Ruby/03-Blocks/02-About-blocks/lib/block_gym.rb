def tag(tag_name, attr = nil)
  # TODO:  Build HTML tags around  content given in the block
  #        The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  # puts tag_name

  if attr != nil
    # print attr
    return "<#{tag_name} #{attr[0]}='#{attr[1]}'>#{yield}</#{tag_name}>"
  end
  content = yield
  content
  return "<#{tag_name}>#{content}</#{tag_name}>"
end

# test1 = tag("h1") { "Some Title" }
# print test1
# "sep"
test2 = tag("h1", ["id", "title"]) do
  "Some Title"
end
print test2

def timer_for
  # TODO:  Return time taken to execute the given block
  start_time = Time.now
  yield
  Time.now - start_time
end
