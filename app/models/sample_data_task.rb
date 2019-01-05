class SampleDataTask
  class << self
    def setup
      User.create!(
        username: 'komiyak',
        location: 'POINT(-122 47)'
      )
    end
  end
end
