# interprete commands 
def control_bot(commands)
	# remove everything before the first "PLACE"
	place_location = commands.index {|key| key[0..4] == "PLACE"}
	commands.shift ( place_location.nil? ? commands.length : place_location )
	robot = false
	commands.each do |cmd|
		case cmd
		when /^PLACE/
			robot = new_bot cmd
		when /^MOVE/
			robot.move unless !robot
		when /^LEFT/
		robot.turn_left unless !robot
		when /^RIGHT/
			robot.turn_right unless !robot
		when /^REPORT/
			robot.report unless !robot
		end
	end
end

# create new robot from command
def new_bot(str)
	params = str.split(/PLACE |,/).reject{|e| e.empty?}
	begin
		params[0] = Integer params[0]
		params[1] = Integer params[1]
	rescue ArgumentError
		return false
	end

	return false unless DIRECTIONS.include? params[2].upcase

	Robot.new params[0], params[1], params[2]
end

def get_commands
	if ARGV[0] == '-f'
		# file mode\
		begin
			commands = IO.readlines ARGV[1]
		rescue IOError, Errno::ENOENT
			puts "Could not open file"
			return []
		end

		commands.each do |cmd|
			cmd.strip!
		end

	else
		# argument mode
		commands = []
		i = 0; until i >= (ARGV.length)
			if ARGV[i].upcase == "PLACE"
				commands << "PLACE #{ARGV[i+1]}"
				i +=1
			else
				commands << ARGV[i].upcase
			end
			i += 1
		end
	end
	return commands
end