class HomeController < ApplicationController
  def index
    @movie = Movie.order('id desc')
    @movie_rate = Movie.order('rate desc').limit(10)
    num = Movie.count()
    random = rand(num)
    @movie_rand = Movie.find(random + 1)
  end
end
