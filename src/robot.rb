TABLE_WIDTH = 5
TABLE_LENGTH = 5
DIRECTIONS = ["NORTH", "WEST", "SOUTH", "EAST"]


class Robot
	def initialize(x, y, dir)
		@x, @y = x, y
		@dir = DIRECTIONS.index(dir.upcase)
	end

	# validity check
	def good_robot?
		(@x >= 0 && @x <= TABLE_WIDTH) && (@y >= 0 && @y <= TABLE_LENGTH) && @dir
	end

	# turn the robot 90° to the left.
	def turn_left
		@dir == (DIRECTIONS.length) - 1 ? @dir = 0 : @dir = @dir + 1
	end

	# turn the robot 90° to the right.
	def turn_right
		@dir == 0 ?	@dir = (DIRECTIONS.length) - 1 : @dir = @dir - 1
	end

	# move the robot one space in the direction it is facing.
	def move
		@dir > 0 && @dir < (DIRECTIONS.length) -1 ? distance = -1 : distance = 1
		if @dir % 2 == 0
			# moving north or south
			newPos = @y + distance
			@y = newPos unless newPos > TABLE_LENGTH || newPos < 0
		else
			# moving east or west
			newPos = @x + distance
			@x = newPos unless newPos > TABLE_WIDTH || newPos < 0
		end
	end

	# print the current location and facing direction of the robot
	def report
		puts sprintf "%d,%d,%s", @x, @y, DIRECTIONS[@dir] unless !self.good_robot?
	end

end