=begin
PSEUDOCODE

The purpose of this CLASS is to create a bag type that can contain a variety of information, including the owner, description, and list of items. The bag can be added to, removed from, checked, and unpacked.

=end

class Bag

  attr_reader :name, :owner
  attr_accessor :items

  def initialize(name, owner, items={})
    @name = name
    @owner = owner
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

  def remove(type, thing, quantity=0)

    missing_type_error = "We could not find #{type} as a type! Please try again."
    missing_item_error = "#{thing} does not exist in your list under #{type}."
    wrong_quantity_error = "You tried to delete more #{thing} than you have. #{thing} has been removed from the list."

    # Checks for type
    puts missing_type_error if !@items.has_key?(type)
    return false if !@items.has_key?(type)


    list = @items[type]

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

  def check_bag(lost_item)
    @items.each do |type,list|
      contains_lost_item = list.any? {|item,empty| item == lost_item}
      return true if contains_lost_item
    end
    return false
  end

  def unpack
    @items.each do |type,list|
      puts "#{type}"
      puts "--------------------"
      list.each {|item| puts item}
      @items.delete(type)
    end
  end
end

my_bag = Bag.new("purple", "Tori",{
  "Toiletries"=>["toothbrush", "toothpaste", "hairdryer", "hairties", "makeup", "shampoo", "conditioner", "deoderant"],
  "Clothes"=>{"Jeans"=>2,"Under Shirt"=>3,"Long Sleeve Shirts"=>4},
  "Snacks"=>["Granola Bars","Apples","Chocolate"]
  })

puts ""
my_bag.add("Toiletries","lotion")
p my_bag


puts ""
my_bag.add("Clothes","Jeans",2)
p my_bag

puts ""
my_bag.add("Clothes","Dress",3)
p my_bag


puts ""
my_bag.remove("Clothes","Dress",2)
p my_bag


puts ""
my_bag.remove("Toiletries","makeup")
p my_bag


puts ""
my_bag.remove("Clothes","Jeans",10)
p my_bag

p my_bag
puts ""
my_bag.remove("Clothes","Jeans",10)
p my_bag

puts my_bag.items
puts ""

puts "toothbrush"
puts my_bag.check_bag("toothbrush")

puts "Jeans"
puts my_bag.check_bag("Jeans")

puts "Granola Bars"
puts my_bag.check_bag("Granola Bars")

puts "ERROR"
puts my_bag.check_bag("ERROR")

my_bag.unpack
puts my_bag.items