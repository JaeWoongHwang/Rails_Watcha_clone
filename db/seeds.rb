# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# watch_boxoffice.json에 있는 파일들에 들어있는 영화 정보를 읽어와서 생성
movies = JSON.parse(File.read("watcha_boxoffice.json"))


list = movies["cards"]

list.each do |movie|
  Movie.create(
    title: movie["items"][0]["item"]["title"],
    poster: movie["items"][0]["item"]["poster"]["original"],
    genre: movie["items"][0]["item"]["main_genre"],
    nation: movie["items"][0]["item"]["nation"],
    director: movie["items"][0]["item"]["directors"][0]["name"]
  )
end

# 5.times do
#   User.create(
#     email: "asdf@asdf.com",
#     password: "123123",
#     password_confirmation: "123123",
#     nickname: "heaven",
#     role: "user"
#   )
# end

  # User.create(
  #   email: "admin@admin.com",
  #   password: "123123",
  #   password_confirmation: "123123",
  #   nickname: "관리자",
  #   role: "admin"
  # )
  #
  #
  # User.create(
  #   email: "man@man.com",
  #   password: "123123",
  #   password_confirmation: "123123",
  #   nickname: "매니저",
  #   role: "manager"
  # )
  #
  # User.create(
  #   email: "user@user.com",
  #   password: "123123",
  #   password_confirmation: "123123",
  #   nickname: "일반유저"
  # )


# Movie.create(
#   title: movies["cards"][0]["items"][0]["item"]["title"],
#   poster: movies["cards"][0]["items"][0]["item"]["poster"]["original"],
#   genre: movies["cards"][0]["items"][0]["item"]["main_genre"],
#   nation: movies["cards"][0]["items"][0]["item"]["nation"],
#   director: movies["cards"][0]["items"][0]["item"]["directors"][0]["name"]
# )
