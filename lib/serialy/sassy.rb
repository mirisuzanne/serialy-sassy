require "serialy/sassy/version"
require 'yaml'
require 'json'
require 'sassy_hash'

module Serialy
  module Sassy

    def self.declare(*args)
      Sass::Script::Functions.declare(*args).inspect
    end

    def self.map(hash)
      Sass::Script::Value::Map.new(hash)
    end


    def json(filename)
      filename = filename.value
      json_data = JSON.parse(File.read(filename))
      self.map(SassyHash[json_data])
    end

    declare(:json, [:filename])

    def yaml(filename)
      filename = filename.value
      yaml_data = YAML.load(File.read(filename))

      self.map(SassyHash[yaml_data])
    end

    declare(:yaml, [:filename])
  end
  #include Sassy
  Sass::Script::Functions.send(:include, Serialy::Sassy)
end


