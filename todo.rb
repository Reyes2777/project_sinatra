require "sinatra"
require "make_todo"

get "/" do
    @todo = Tarea.all
    @title = "To Do"
    erb :home
end

post "/" do
    work = params[:create]
    Tarea.create(work)
    redirect "/"
end
