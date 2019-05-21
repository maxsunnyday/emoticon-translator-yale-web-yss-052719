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

def get_japanese_emoticon(file_path, eng_emoticon)
  translation = load_library(file_path)
  if translation["get_emoticon"].keys.include?(eng_emoticon)
    return translation["get_emoticon"][eng_emoticon]
  else
    puts "Sorry, that emoticon was not found."
  end
end

def get_english_meaning(file_path, jap_emoticon)
  translation = load_library(file_path)
end
