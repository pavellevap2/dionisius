# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Restaurant.create(name: 'Рога и Копыта112321241', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта23232', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта32131', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта321', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта123', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта7', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта6', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта5', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта4', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта3', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта22', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта2', cuisine: 'Восточная', specialization: 'Шашлык')
Restaurant.create(name: 'Рога и Копыта1', cuisine: 'Восточная', specialization: 'Шашлык')
Address.create(title: 'Russia, Krasnodar, Stavropolskaya 121', restaurant_id: 1)
Address.create(title: 'Russia, Krasnodar, Stavropolskaya 122', restaurant_id: 1)
Address.create(title: 'Russia, Krasnodar, Stavropolskaya 14', restaurant_id: 2)
Address.create(title: 'Russia, Krasnodar, Stavropolskaya 1', restaurant_id: 2)
Address.create(title: 'Russia, Krasnodar, Krasnaya  12', restaurant_id: 3)
Address.create(title: 'Russia, Krasnodar, Krasnaya 51', restaurant_id: 3)
Address.create(title: 'Russia, Krasnodar, Turgeneva 12', restaurant_id: 4)
Address.create(title: 'Russia, Krasnodar, Uralskaya 12', restaurant_id: 4)
Address.create(title: 'Russia, Krasnodar, Stavropolskaya 12', restaurant_id: 5)
 Review.create(title: 'Гарный ресторан4214', body: 'Всё было прекрасно, сортиры чистые, прекрасный сервис, официантки сисястые, официанты жопастые, всё понравилось',
               restaurant_id: 2)
 Review.create(title: 'Гарный ресторан4214211', body: 'Всё было прекрасно, сортиры чистые, прекрасный сервис, официантки сисястые, официанты жопастые, всё понравилось',
               restaurant_id: 2)

 Review.create(title: 'Гарный рестора421421421421н', body: 'Всё было прекрасно, сортиры чистые, прекрасный сервис, официантки сисястые, официанты жопастые, всё понравилось',
               restaurant_id: 1)
 Review.create(title: 'Гарный ресторан4', body: 'Всё было прекрасно, сортиры чистые, прекрасный сервис, официантки сисястые, официанты жопастые, всё понравилось',
               restaurant_id: 1)
 Review.create(title: 'Гарный ресторан44444', body: 'Всё было прекрасно, сортиры чистые, прекрасный сервис, официантки сисястые, официанты жопастые, всё понравилось',
               restaurant_id: 2)
 Review.create(title: 'Гарный ресторан754', body: 'Всё было прекрасно, сортиры чистые, прекрасный сервис, официантки сисястые, официанты жопастые, всё понравилось',
               restaurant_id: 2)
 Review.create(title: 'Гарный ресторан211', body: 'Всё было прекрасно, сортиры чистые, прекрасный сервис, официантки сисястые, официанты жопастые, всё понравилось',
               restaurant_id: 2)
 Review.create(title: 'Гарный ресторан2222', body: 'Всё было прекрасно, сортиры чистые, прекрасный сервис, официантки сисястые, официанты жопастые, всё понравилось',
               restaurant_id: 3)
 Review.create(title: 'Гарный рестора513215325н', body: 'Всё было прекрасно, сортиры чистые, прекрасный сервис, официантки сисястые, официанты жопастые, всё понравилось',
               restaurant_id: 3)
 Review.create(title: 'Гарный ресторан54343', body: 'Всё было прекрасно, сортиры чистые, прекрасный сервис, официантки сисястые, официанты жопастые, всё понравилось',
               restaurant_id: 4)
 Review.create(title: 'Гарный ресторан42142121421421', body: 'Всё было прекрасно, сортиры чистые, прекрасный сервис, официантки сисястые, официанты жопастые, всё понравилось',
               restaurant_id: 2)
