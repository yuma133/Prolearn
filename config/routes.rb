Rails.application.routes.draw do
	devise_for :users

	resources :users, only: [:show, :edit, :update] do
		resources :teaches, only: [:new, :create, :edit, :update, :destroy]
    end
    resources :messages, only: [:create]
    resources :rooms, only: [:create, :show, :index]
    resources :notifis, only: [:index, :destroy]

	get "htmlcss" => "langs#html_css"
	get "c" => "langs#c"
	get "java" => "langs#java"
	get "ruby" => "langs#ruby"
	get "python" => "langs#python"
	get "js" => "langs#js"
	get "php" => "langs#php"
	get "rails" => "langs#rails"
	get "jquery" => "langs#jquery"
	get "about" => "homes#about"
	get "howto" => "homes#howto"
    root "homes#top"
end
