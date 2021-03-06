module DataFormatter

	def self.get_name row
		row[0].gsub("'", "")
	end

	def self.get_lat row
		row[1].partition('(').last.split(' ')[0].to_f
	end

	def self.get_lng row
		row[1].partition('(').last.split(' ')[1].to_f
	end

	def self.get_lines row
		row[3].split('-')
	end
end