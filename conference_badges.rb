require 'pry'

def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator (name_array)
    batched_badges = name_array.map do |name| 
        badge_maker name
    end
end

# def assign_rooms(name_array)
#     room_array = name_array.map do |name|
#         "Hello, #{name}! You'll be assigned to room #{name_array.index(name) + 1}!"
#     end
# end

def assign_rooms names
    rooms = []
    names.each.with_index(1) do |name, index| 
        rooms.push "Hello, #{name}! You'll be assigned to room #{index}!"
    end
    rooms
end

def printer name_array
    badges = batch_badge_creator name_array
    badges.each {|badge| puts badge}
    rooms = assign_rooms name_array
    rooms.each {|room| puts room}
end