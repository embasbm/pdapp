namespace :scrape do
  desc "scrape data for mobile app ids"
  task app_data: :environment do
    data_import = ImportData.new(File.open(ARGV[1])) if ARGV[1].present?
  end
end
