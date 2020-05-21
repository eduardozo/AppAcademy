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



end
