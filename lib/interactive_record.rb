require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  def self.table_name
    self.to_s.downcase.pluralize
  end
  
  def self.column_names

    sql = "pragma table_info('#{table_name}')"

    table_info = DB[:conn].execute(sql)
    column_names = []
    table_info.each do |row|
      column_names << row["name"]
    end
    column_names.compact
  end
  
  attr_accessor column_names.to_sym
  
  def initialize
    
  end 
  
  def table_name_for_insert
  end 
  
  def col_names_for_insert
  end 
  
  def values_for_insert
end

  def save
  end 
  
  def self.find_by_name
  end 
  
  def self.find_by
  end 
  
  
end