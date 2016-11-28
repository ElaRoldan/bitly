get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @urls = Url.all.sort
  erb :index
end

get '/long_url/:short_url' do
  @short_url = params[:short_url]
  @long_url = Url.find_by(short_url: @short_url) 
  @long_url.click_count += 1
  @long_url.save 
  redirect to ("http://#{@long_url.original}")
end



post '/urls' do
  @url = params[:user_url]
  Url.create(original: @url)
  redirect to ("/")
end    




