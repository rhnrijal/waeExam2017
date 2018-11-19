FactoryBot.define do
  factory :student, class: User do
    email "joe_teacher@ait.asia"
    password "password"
    password_confirmation "password"
  end


end