require 'pry'
require 'translator'

phrase = "Get the hell out"
translator = PigLatinTranslation.new(phrase)
translator.translate
