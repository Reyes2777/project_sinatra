require 'rubygems'
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

post "/update" do
    work_update = params[:update]
    Tarea.update(work_update)
    redirect "/"
end

post "/delete" do
    work_update = params[:delete]
    Tarea.destroy(work_update)
    redirect "/"
end
