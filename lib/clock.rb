require './config/boot'
require './config/environment'
require 'clockwork'

module Clockwork

every(1.minutes, 'check_reminder') { 
	Task.check_due
	Task.check_reminder
}
end