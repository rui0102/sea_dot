User.create!(
  name: '田島 るい',
  picture: File.open('./app/assets/images/user1.jpg'),
  age: '24',
  self_introduction: 'シルバーフェリーで三等航海士を努めています。',
  ship_name: 'シルバープリンセス',
  email: 'test1@gmail.com',
  password: 'password'
)

CreaturesInfo.create!(
  [
    {
      user_id: 1,
      content: 'イルカがいました！',
      picture: File.open('./app/assets/images/イルカ.jpg'),
      latitude: '41.56',
      longitude: '143.02',
      weather: '晴れ',
      sea_lavel: '2',
      visibility: '9',
      temperature: '9',
      departure: '八戸',
      destination: '苫小牧'
    },
    {
      user_id: 1,
      content: '東京湾にエイがいます！！',
      latitude: '35.38',
      longitude: '139.78',
      weather: '曇り',
      sea_lavel: '1',
      visibility: '8',
      temperature: '20',
      departure: '晴海埠頭',
      destination: '名古屋港'
    },
  ]
)

# {
#   user_id: 1,
#   content: '',
#   picture: File.open('./app/assets/images/'),
#   latitude: '',
#   longitude: '',
#   weather: '',
#   sea_lavel: '',
#   visibility: '',
#   temperature: '',
#   departure: '',
#   destination: ''
# },