# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
set :output, "'#{path}/log/cron.log"

job_type :runner, "cd :path && bundle exec rails runner -e :environment ':task' :output"

job_type :script, "'#{path}/public/:task :output"
#
 every 15.minutes do
#download the file from remote server
script "retrieve.rb"
#command "retrieve.rb"
end

every :reboot do 
	script "retrieve.rb"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
