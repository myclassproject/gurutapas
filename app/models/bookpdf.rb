class Bookpdf < ActiveRecord::Base

  def self.save(upload)
    name =  upload['bookpdf'].original_filename
    directory = "public/data"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['bookpdf'].read) }
  end

  belongs_to :author

end
