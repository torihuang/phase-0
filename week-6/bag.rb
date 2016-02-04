=begin
PSEUDOCODE

The purpose of this CLASS is to create a bag type that can contain a variety of information, including the owner, description, and list of items. The bag can be added to, removed from, checked, and unpacked.

=end

class Bag

  attr_reader :owner, :description
  attr_accessor :items

  def initialize(owner, description, items={})
    @owner = owner
    @description = description
    @items = items
  end

  # Add items by type and quantity to the item list
  def add(type, thing, quantity=0)
    # Add a new type if it does not already exist.
    @items[type] = [] if !@items.has_key?(type)

    list_by_type = @items[type]
    if list_by_type.is_a? Array then
      list_by_type.push(thing)
    elsif list_by_type.has_key?(thing) then
      list_by_type[thing] += quantity
    else
      list_by_type[thing] = quantity
    end
  end

  # Remove items by type and quantity
  def remove(type, thing, quantity=0)

    missing_type_error = "We could not find #{type} as a type! Please try again."
    missing_item_error = "#{thing} does not exist in your list under #{type}."
    wrong_quantity_error = "You tried to delete more #{thing} than you have. #{thing} has been removed from the list."

    # Checks if type exists in list
    puts missing_type_error if !@items.has_key?(type)
    return false if !@items.has_key?(type)


    list = @items[type]

    # Removes the item by quantity depending on Array or Hash type
    if list.is_a? Array then
      if list.include?(thing) then
        list.delete(thing)
        return true
      else
        puts missing_item_error
        return false
      end
    elsif list.has_key?(thing) then
      if list[thing] < quantity then
        list.delete(thing)
        puts wrong_quantity_error
        return false
      else
        list[thing] -= quantity
        return true
      end
    else
      puts missing_item_error
      return false
    end
  end

  # List all items in your bag
  def list_items
    @items.each do |type,list|
      puts "#{type}"
      puts "--------------------"
      list.each {|item, key| puts "#{item} #{key}"}
      puts ""
    end
  end

  # Check for lost items in your bag
  def check_bag(lost_item)
    @items.each do |type,list|
      contains_lost_item = list.any? {|item,empty| item == lost_item}
      return "No worries, you already packed #{lost_item}." if contains_lost_item
    end
    return "Your bag is missing #{lost_item}!"
  end

  # Unpack the bag and print all contents
  def unpack
    list_items
    @items.each do |type,list|
      @items.delete(type)
    end
  end
end

nors_bag = Bag.new("Nors","Doggy Bag",{"Clothes"=>["Plaid Jacket","Blue Sweater"],"Snacks"=>{"Dog Food"=>5,"Bowl"=>1,"Food Bowl"=>1,"Treats"=>10},"Toys"=>["Stuffed Squirrel","Squeaky Duck"],"Misc"=>["Extension Leash","Short Leash","Harness","Brush"]})

# Example of how to use Bag

nors_bag.list_items
nors_bag.add("Snacks","Bones",3)
nors_bag.remove("Misc","Brush")
puts nors_bag.check_bag("Squeaky Duck")
puts ""
nors_bag.unpack