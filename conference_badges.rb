# Write your code here.

def badge_maker(string)
  "Hello, my name is #{string}."
end

def batch_badge_creator(peep)
badges = peep.collect {|person| badge_maker(person)}
end

def assign_rooms(peep)
  count = 0
  size = peep.length
rooms = []
  while count < size do
    rooms[count] = count + 1
    count += 1
  end
count = 0
assign = []
while count < size do
  assign[count] = "Hello, #{peep[count]}! You'll be assigned to room #{rooms[count]}!"
  count += 1
end
assign
end

def printer(assign)
  count = 0
  size = assign.length
  badges = batch_badge_creator(assign)
  rooms = assign_rooms(assign)
  while count < size
    puts badges[count]
    puts rooms[count]
    count += 1
end
end
