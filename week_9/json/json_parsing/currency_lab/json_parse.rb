require 'json'

class JSONParse

  attr_accessor :json_parse

  def initialize json_file

    @json_parse = JSON.parse(File.read(json_file))

  end

end
