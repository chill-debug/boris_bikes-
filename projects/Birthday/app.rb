require 'sinatra'

get '/' do 
    "Happy birthday"
end 

get '/birthday' do
    p params
    @name = params[:name]
    erb :index
  end

  post '/happy_birthday' do
    params 
    month = params[:month]
    day = params[:days]
    year = params[:years]
    p Date.parse("#{day} #{month} #{year}")
    p today = DateTime.now
    p birthday = Date.parse("#{day} #{month} #{year}")
    p days_to_go = birthday - today
    p days_to_go.to_i
    p dob = Date.parse("#{day} #{month} #{year}")
    if dob < today.month && dob.day < today.day
       next_birthday = Date.parse("#{day} #{month} #{today.year + 1}")
       next_birthday = Date.parse ("#{day} #{month} #{today}")
    end 
    erb :index_2
    "Happy Birthday"
end 


