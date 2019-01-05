class SampleDataTask
  class << self
    def setup
      User.create!(
        username: 'komiyak'
      )
    end
  end
end
