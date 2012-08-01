$: << File.join(File.dirname(__FILE__), 'lib')

require 'rigor/web'

Dir['../rigor/spec/rails_app/experiments/*.rb'].each do |file|
  Rigor::Experiment.load_from(file)
end

run Rigor::Web::Server
