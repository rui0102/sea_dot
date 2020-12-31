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
      content: 'イルカの発見情報です！',
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
      content: 'イルカの発見情報です！',
      picture: File.open('./app/assets/images/イルカ.jpg'),
      latitude: '41.56',
      longitude: '143.02',
      weather: '晴れ',
      sea_lavel: '2',
      visibility: '9',
      temperature: '9',
      departure: '八戸',
      destination: '苫小牧'
    },{
      user_id: 1,
      content: 'イルカの発見情報です！',
      picture: File.open('./app/assets/images/イルカ.jpg'),
      latitude: '41.56',
      longitude: '143.02',
      weather: '晴れ',
      sea_lavel: '2',
      visibility: '9',
      temperature: '9',
      departure: '八戸',
      destination: '苫小牧'
    },{
      user_id: 1,
      content: 'イルカの発見情報です！',
      picture: File.open('./app/assets/images/イルカ.jpg'),
      latitude: '41.56',
      longitude: '143.02',
      weather: '晴れ',
      sea_lavel: '2',
      visibility: '9',
      temperature: '9',
      departure: '八戸',
      destination: '苫小牧'
    },{
      user_id: 1,
      content: 'イルカの発見情報です！',
      picture: File.open('./app/assets/images/イルカ.jpg'),
      latitude: '41.56',
      longitude: '143.02',
      weather: '晴れ',
      sea_lavel: '2',
      visibility: '9',
      temperature: '9',
      departure: '八戸',
      destination: '苫小牧'
    },{
      user_id: 1,
      content: 'イルカの発見情報です！',
      picture: File.open('./app/assets/images/イルカ.jpg'),
      latitude: '41.56',
      longitude: '143.02',
      weather: '晴れ',
      sea_lavel: '2',
      visibility: '9',
      temperature: '9',
      departure: '八戸',
      destination: '苫小牧'
    },{
      user_id: 1,
      content: 'イルカの発見情報です！',
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
      content: '鯨の発見情報です！',
      picture: File.open('./app/assets/images/鯨.jpg'),
      latitude: '32.73',
      longitude: '133.94',
      weather: '晴れ',
      sea_lavel: '2',
      visibility: '9',
      temperature: '9',
      departure: '小松島',
      destination: '細島'
    },
    {
      user_id: 1,
      content: 'エイの発見情報です！',
      latitude: '35.38',
      longitude: '139.78',
      weather: '曇り',
      sea_lavel: '1',
      visibility: '8',
      temperature: '20',
      departure: '晴海埠頭',
      destination: '名古屋港'
    },
    {
      user_id: 1,
      content: 'イルカの発見情報です！',
      picture: File.open('./app/assets/images/イルカの群れ.jpg'),
      latitude: '42.08',
      longitude: '141.67',
      weather: '曇り',
      sea_lavel: '3',
      visibility: '8',
      temperature: '9',
      departure: '苫小牧',
      destination: '八戸'
    },
    {
      user_id: 1,
<<<<<<< HEAD
      content: '漁船群がいます！！注意して航行します。',
=======
      content: '鯨の発見情報です！',
      picture: File.open('./app/assets/images/クジラ.jpeg'),
      latitude: '32.35',
      longitude: '132.94',
      weather: '晴れ',
      sea_lavel: '2',
      visibility: '9',
      temperature: '9',
      departure: '小松島',
      destination: '細島'
    },
    {
      user_id: 1,
      content: '漁船群の発見情報です！',
>>>>>>> dc1ddc381d27b1de1174baf79ecab6bb855abd13
      picture: File.open('./app/assets/images/漁船群.png'),
      latitude: '40.51',
      longitude: '141.38',
      weather: '晴れ',
      sea_lavel: '1',
      visibility: '10',
      temperature: '9',
      departure: '八戸',
      destination: '苫小牧'
    },
    {
      user_id: 1,
      content: 'サメの発見情報です！',
      picture: File.open('./app/assets/images/さめ.jpg'),
      latitude: '34.09',
      longitude: '138.55',
      weather: '晴れ',
      sea_lavel: '2',
      visibility: '9',
      temperature: '9',
      departure: '東京湾',
      destination: '名古屋港'
    },
    {
      user_id: 1,
      content: 'イルカの発見情報です！',
      picture: File.open('./app/assets/images/イルカの群れ2.jpg'),
      latitude: '42.14',
      longitude: '142.33',
      weather: '晴れ',
      sea_lavel: '1',
      visibility: '10',
      temperature: '9',
      departure: '苫小牧',
      destination: '釧路'
    },
    {
      user_id: 1,
      content: '鯨の発見情報です！',
      picture: File.open('./app/assets/images/鯨2.jpg'),
      latitude: '32.79',
      longitude: '134.34',
      weather: '晴れ',
      sea_lavel: '2',
      visibility: '9',
      temperature: '9',
      departure: '小松島',
      destination: '細島'
    }
  ]
)