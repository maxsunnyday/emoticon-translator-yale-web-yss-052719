# require modules here
require "yaml"
require "pry"
def load_library(file_path)
  translations = YAML::load_file("#{file_path}")
  puts translations
  translations.each do |meaning, array|

  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
