#!/usr/bin/env ruby
require_relative "robot.rb"
require_relative "commands.rb"


def main
	return print_usage if ARGV.empty?
	control_bot get_commands
end

def print_usage
	puts "Usage: -f filename for external file or commands: "
	puts "[PLACE x,y,d] to create a new robot at position x y and facing direction."
	puts "[MOVE] to move the robot one space in the direction it is facing. "
	puts "[LEFT] to turn the robot 90° left"
	puts "[RIGHT] to turn the robot 90° right"
	puts "[REPORT] to output the current location of the robot to stdout."
end

main