require 'csv'

class Sale < ActiveRecord::Base
  belongs_to :user

  attr_accessor :file

  def self.create_from_file(file, user)
    file_data = parse_file(file)
    self.create(file_data) do |sale|
      sale.user = user
    end
  end

  def self.parse_file(file)
    data = CSV.read(file, { :col_sep => "\t" })
    headers = data.shift.map { |header| header.parameterize.underscore.to_sym }
    data.map do |sale_data|
      headers.inject({}) { |hash, header| hash[header] = sale_data[headers.index(header)]; hash }
    end
  end
end
