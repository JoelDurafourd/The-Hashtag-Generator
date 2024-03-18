=begin
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false. 
=end

def generateHashtag(str)
    new_str = str.split(" ").map(&:capitalize).join.gsub(/\s+/, "")
    if new_str == nil || new_str.length >= 140
        return false
    else 
        return "#" + new_str
    end 

  end 

p generateHashtag("")
p generateHashtag(" " * 200)
puts generateHashtag("Do We have A Hashtag")
puts generateHashtag("Codewars")
puts generateHashtag("Codewars Is Nice")
puts generateHashtag("Codewars is nice")
puts generateHashtag("code" + " " * 140 + "wars")
puts generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat")
puts generateHashtag("a" * 139)
puts generateHashtag("a" * 140)
p generateHashtag("code" + " " * 140 + "wars")