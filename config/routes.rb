Rails.application.routes.draw do
  get 'students', to: 'student#index'
  get 'students/grades', to: 'student#grades'
  get 'students/highest-grade', to: 'student#highest_grade'
end
