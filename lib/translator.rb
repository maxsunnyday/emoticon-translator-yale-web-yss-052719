# require modules here
require "yaml"
require "pry"
def load_library(file_path)
  translations = YAML::load_file("#{file_path}")
  new_translations = {"get_meaning" => {}, "get_emoticon" => {}}
  translations.each do |meaning, array|
    new_translations["get_meaning"][array[1]] = meaning
    new_translations["get_emoticon"][array[0]] = array[1]
  end
  new_translations
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
