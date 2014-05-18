# coding: utf-8

require 'simplecov'
require 'coveralls'
require 'nihongo'
require 'rspec'
require 'ap'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

class String
  def compact
    gsub(/\s+/, ' ').strip
  end
end
