namespace :check do
  task exception: :environment do
    raise 'unhandled exception'
  end
end
