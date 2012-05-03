require 'thor'
require 'foodie'

module Foodie
  class CLI < Thor

    desc "portray ITEM", "Determines if a piece of food is delicious or gross"
    def portray(name)
      puts Foodie::Food.portray(name)
    end

    desc "pluralize", "pluralizes a word"
    method_option :word, :aliases => '-w'
    def pluralize
      puts Foodie::Food.pluralize(options[:word])
    end
  end
end
