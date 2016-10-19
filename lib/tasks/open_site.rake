desc 'Open project production site'
namespace :open do
  task :site => :environment do
    sh 'open https://skillbanker.herokuapp.com/'
  end
end
