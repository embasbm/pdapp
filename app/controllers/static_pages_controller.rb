class StaticPagesController < ApplicationController
  def home
  end

  def data
    data_import = ImportData.new(params[:file]) if request.post?
    send_file(data_import.filepath, :filename => "scraped_data.json")
  end
end
