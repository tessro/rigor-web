require 'sinatra/base'
require 'rigor'

module Rigor::Web
  class Server < Sinatra::Base
    set :root, File.dirname(File.expand_path(__FILE__))

    set :static, true

    set :public_folder, Proc.new { File.join(root, "server", "public") }
    set :views,         Proc.new { File.join(root, "server", "views")  }

    helpers do
      include Rack::Utils
      alias_method :h, :escape_html
    end

    get '/' do
      @experiments = Rigor::Experiment.all

      erb :index
    end

    get '/experiments/:id' do
      @experiment = Rigor::Experiment.find_by_id(params[:id])
      erb :experiment
    end
  end
end
