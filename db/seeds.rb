# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Menu.create!(
  [
    {
      type: "ドリンク"
    },
    {
      type: "コース"
    },
    {
      type: "料理"
    },
    {
      type: "デザート"
    },
    {
      type: "その他"
    }
  ])


Area.create!(
  [
    {
      name: "千代田区",
    },
    {
      name: "新宿区",
    },
    {
      name: "墨田区",
    },
    {
      name: "目黒区",
    },
    {
      name: "渋谷区",
    },
    {
      name: "豊島区",
    },
    {
      name: "板橋区",
    },
    {
      name: "葛飾区",
    },
    {
      name: "中央区",
    },
    {
      name: "文京区",
    },
    {
      name: "江東区",
    },
    {
      name: "大田区",
    },
    {
      name: "中野区",
    },
    {
      name: "北区",
    },
    {
      name: "練馬区",
    },
    {
      name: "江戸川区",
    },
    {
      name: "港区",
    },
    {
      name: "台東区",
    },
    {
      name: "品川区",
    },
    {
      name: "世田谷区",
    },
    {
      name: "杉並区",
    },
    {
      name: "荒川区",
    },
    {
      name: "足立区",
    }

  ])

Genre.create!{
  [
    {
      category: "和食"
    },
    {
      category: "洋食"
    },
    {
      category: "中華料理"
    },
    {
      category: "その他料理"
    }
  ])
}


