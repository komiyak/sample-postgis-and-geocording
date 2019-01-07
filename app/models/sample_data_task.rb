class SampleDataTask
  class << self
    def setup
      User.create!(
        username: 'komiyak',
        location: 'POINT(33.589154 130.392993)',
        location_name: '中央区',
        state: :available
      )

      # 県外
      User.create!(
        username: 'komiya30',
        location: 'POINT(32.770971 130.767797)',
        location_name: '熊本秋津',
        state: :available
      )
      User.create!(
        username: 'komiya32',
        location: 'POINT(43.630583 142.330148)',
        location_name: '北海道旭川',
        state: :available
      )
      User.create!(
        username: 'komiya31',
        location: 'POINT(34.686822 135.528735)',
        location_name: '大阪府大坂城',
        state: :available
      )

      # 最も近い
      User.create!(
        username: 'komiya2',
        location: 'POINT(33.590248 130.383477)',
        location_name: '大手門',
        state: :available
      )
      User.create!(
        username: 'komiya3',
        location: 'POINT(33.590248 130.383477)',
        location_name: '大手門',
        state: :deleted
      )


      # 遠距離
      User.create!(
        username: 'komiya21',
        location: 'POINT(33.539100 130.419794)',
        location_name: '南区野多目',
        state: :available
      )
      User.create!(
        username: 'komiya20',
        location: 'POINT(33.560500 130.407054)',
        location_name: '南区大池',
        state: :available
      )

      # 中距離
      User.create!(
        username: 'komiya10',
        location: 'POINT(33.579901 130.399409)',
        location_name: '薬院',
        state: :available
      )
      User.create!(
        username: 'komiya11',
        location: 'POINT(33.575215 130.399409)',
        location_name: '平尾',
        state: :available
      )

      # サンプルデータ
      3000.times do |index|
        User.create!(
              username: "#{index}-u",
              location: 'POINT(43.630583 142.330148)',
              location_name: '北海道旭川',
              state: (index % 2) == 0 ? :available : :deleted
        )
      end
    end
  end
end
