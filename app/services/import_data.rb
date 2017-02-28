class ImportData
  def initialize(file)
     @file = file
     read_attached_file
     create_json_file
  end

  def read_attached_file
    @imported_data = []
    data_hash   = JSON.parse(File.read(@file.tempfile))
    data_hash["mobile_apps"].each do |app|
      begin
        page        = Nokogiri::HTML(RestClient.get("http://play.google.com/store/apps/details?id=#{app['id']}"))
        name        = page.css('.id-app-title').text
        publisher   = page.css('.document-subtitle.primary').text
        @imported_data << { id: app['id'], name: name, publisher: publisher}
      rescue => e
        Rails.logger.error "Error importing App: #{app['id']}"
      end
    end
  end

  def create_json_file
    @filepath = "public/scraped_data.json"
    File.open(@filepath,"w") do |f|
      f.write(@imported_data.to_json)
    end
  end

  def filepath
    @filepath
  end
end
