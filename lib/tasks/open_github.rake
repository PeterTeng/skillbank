desc 'Open project github'
namespace :open do
  task :github => :environment do
    sh 'open https://github.com/PeterTeng/skillbank'
  end
end
