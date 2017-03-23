# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(list)
  new_list = [] # is there a better way to use .each without making a new array?
  list.each do |person|
    new_list.push(badge_maker(person))
  end
  new_list
end

def assign_rooms(attendees)
   room_list = []
   room_number = 0
   for person in attendees do
     room_list[room_number] = "Hello, #{person}! You'll be assigned to room #{room_number+1}!"
     room_number +=1
   end
   room_list
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |room|
    puts room
  end
end
