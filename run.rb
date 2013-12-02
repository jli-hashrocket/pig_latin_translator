require 'pry'
require_relative 'pig_latin_translation'

phrase = "Get the hell out"
translator = PigLatinTranslation.new(phrase)
translator.translate
