namespace :sample_data do
  desc "Preparing sample data for development"
  task setup: :environment do
    abort 'The task can not be used for a production.' if Rails.env.production?
    SampleDataTask.setup
  end
end
