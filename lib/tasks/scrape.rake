namespace :scrape do
  desc "scrape data for mobile app ids"
  task app_data: :environment do
    if ARGV[1].present? && File.file?(ARGV[1])
      data_import = ImportData.new(ARGV[1])
    else
      p "#{ARGV[1]} not valid file"
    end
  end
end
