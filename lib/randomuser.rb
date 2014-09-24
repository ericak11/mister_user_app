module RandomUser
  def self.fetch
    response = HTTParty.get("http://api.randomuser.me")["results"][0]["user"]
    hash = {
    name: "#{response["name"]["first"]} #{response["name"]["last"]}",
    gender: response["gender"],
    picture:  response["picture"]["large"],
    email:  response["email"],
    dob:  response["dob"].to_i,
    phone:  response["phone"],
    location:  response["location"]["city"],
    password:  response["password"]
    }
    puts hash
    User.create(hash)
  end
end
