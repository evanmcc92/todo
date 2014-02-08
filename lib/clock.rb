require './config/boot'
require './config/environment'
require 'clockwork'

module Clockwork

every(1.minutes, 'check_reminder') { 
	Task.check_reminder
}
every(1.minutes, 'check_due') { 
	Task.check_due
}
end