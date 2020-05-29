require_relative "room"

class Hotel

  def initialize(name, capacities)
    @name = name
    @rooms = get_rooms(capacities)
  end

  def get_rooms(capacities)
    hash = {}
    capacities.each { |room_name, capacity| hash[room_name] = Room.new(capacity) }
    hash
  end

  def name
    @name.split(' ').map(&:capitalize).join(' ')
  end

  def rooms
    @rooms
  end

  def room_exists?(name)
    @rooms.key?(name)
  end

  def check_in(person, room_name)
    if room_exists?(room_name)
      if @rooms[room_name].add_occupant(person)
        puts 'check in successful'
      else
        puts 'sorry, room is full'
      end
    else
      puts 'sorry, room does not exist'
    end
  end

  def has_vacancy?
    room_list = @rooms.values
    return false if room_list.all?(&:full?)

    true
  end

  def list_rooms
    @rooms.each do |room_name, room|
      puts "#{room_name},  #{room.available_space.to_i}"
    end
  end

end
