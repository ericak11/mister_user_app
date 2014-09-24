  # primary_key :id
  # String :name, :size=>127, :null=>false
  # String :gender, :size=>127, :null=>false
  # String :picture, :size=>500, :null=>false
  # String :email, :size=>500, :null=>false
  # Integer :dob, :null=>false
  # String :phone, :size=>127, :null=>false
  # String :location, :size=>500, :null=>false
  # String :password, :size=>500, :null=>false

  class User < Sequel::Model
    def male?
      gender == "male"
    end

    def female?
      gender == "female"
    end

    def mr?
      name.split[0] == "mr"
    end

    def ms?
      name.split[0] == "ms"
    end

    def miss?
      name.split[0] == "miss"
    end

    def mrs?
      name.split[0] == "mrs"
    end

    def get_age
      (Time.now.utc.to_date - Time.at(dob).utc.to_date)/365
    end

    def adult?
      get_age > 18
    end

    def teen?
      get_age <= 18 && get_age >= 13
    end

    def tween?
      get_age <= 12 && get_age >= 11
    end

    def child?
      get_age <= 10 && get_age >= 4
    end

    def toddler?
      get_age <= 3 && get_age > 1
    end

    def baby?
      get_age <= 1
    end

    def boomer?
      Time.at(dob).year >= 1946 && Time.at(dob).year <= 1964
    end

  end
