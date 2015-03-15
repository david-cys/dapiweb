class Profile
  attr_accessor :id, :email, :description

  def initialize(args = {})
    self.id = args["id"]
    self.description = args["description"]
    self.email = args["email"]
  end
end

