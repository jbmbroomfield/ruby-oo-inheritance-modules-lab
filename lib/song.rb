require 'pry'

class Song
	include Paramable
	extend Memorable, Findable

	attr_accessor :name
	attr_reader :artist

	@@songs = []

	def initialize
		@@songs << self
	end

	def self.all
		@@songs
	end

	def artist=(artist)
		@artist = artist
	end
end
