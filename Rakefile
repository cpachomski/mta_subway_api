task :seed do
	sh 'ruby db/seed.rb'
end

task :run do
	sh "shotgun config.ru"
end

task :nuke do
	sh 'ruby db/nuke.rb'
end

task :info do
	sh 'ruby db/table_info.rb'
end