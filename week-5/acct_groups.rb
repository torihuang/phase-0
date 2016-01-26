=begin

In this challenge, you will make your own method to automatically create accountability groups from a list of names. You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person.

This is a creative challenge and you can make it as easy or difficult as you would like. Decide what an MVP (Minimum Viable Product) will look like and what the output should be. This is part of the challenge.

=end

=begin
PSEUDOCODE

Input: Array of Strings (List of names)
Output: Array of Arrays (Accountability groups, 4-5 in a group but at least 3)

In this method, we want to divide up a list of people in to groups of 4 or 5, but at least 3. We want to have at least 10 groups and no more than 20 groups, however it is more important that we have at least three people in a group and no more than 5 people in a group.

First, we will check the ideal number of people per group. We will do this by comparing the group sizes for 5, then 4, then 3 people per group to the conditions listed above. Next, we will check the remainder of people left after dividing the group by the ideal number. If the ideal number picked is five, we will make the last few teams groups of four by taking away from previous groups and adding to the final group. If the ideal number picked is four, we will make the last few teams groups of five. If the ideal number is three, we will make the last few teams groups of four by adding the remainder to current groups.

We will then randomly assign groups by picking someone from the list and filling them in group 1, until group 1 is full from the condition, the group 2, group 3, etc. We will fill the last few groups with the conditions listed above.

Then everyone will have an accountability group!

=end

def assign_accountability_groups(team)

  # determine ideal team length
  if team.length <= 10
    team_size = team.length / 2
  elsif team.length < 16
    team_size = 4
  else
    team_size = 5
  end

  # calculate the number of teams and the extra people in the last team
  num_teams = team.length / team_size
  extra_people = team.length % team_size

  if extra_people != 0 then num_teams += 1 end

  # define an empty has where we'll save the accountability groups
  accountability_groups = Hash.new([])

  # randomly assign teammembers to accountability groups based on team size and number of teams
  i=0
  while team.length > 0
    prng = Random.new
    random_person = prng.rand(0...team.length)
    current_group = ((i)/team_size) + 1

    if i % team_size == 0
      accountability_groups[current_group.to_s] = [team[random_person]]
    else
      accountability_groups[current_group.to_s].push(team[random_person])
    end
    team.delete_at(random_person)
    i+=1
  end

  # assign the extra people in the last group to other groups, or pull from other groups, depending on team sizes
  if extra_people !=0
    if team_size == 5
      num_needed = team_size - (extra_people)
      for i in 1...num_needed
        shuffled_person = accountability_groups[i.to_s].pop
        accountability_groups[(num_teams.to_s)].push(shuffled_person)
      end
    else
      num_needed = extra_people
      if i==11 then num_needed = 0 end
      for j in 1..num_needed
        accountability_groups[j.to_s].push(accountability_groups[(num_teams.to_s)].pop)
      end
    end
  end
  return accountability_groups
end


sealions = ["Aaron Figueroa", "Alivia Blount", "Allison Scofield", "Alyssa Page", "Alyssa Ransbury", "Andria Reta", "Austin Dorff", "Autumn McFeeley", "Ayaz Uddin", "Ben Giamarino", "Benjamin Heidebrink", "Bethelhem Assefa", "Robert Reith", "Dana Breen", "Brett Ripley", "Brittany Bui", "Rene Castillo", "Justin J Chang", "Ché Sanders", "Chris Henderson", "Chris Munguia", "Chris Pon", "Colette Pitamba", "Connor Reaumond", "Cyrus Vattes", "Dan Heintzelman", "David Lange", "Eduardo Bueno", "Elizabeth Roche", "FJ Collins Jr.", "Frances Pangilinan", "Francis Cuthbertson", "Ian Fricker", "Ian Thorp", "Ivy Vetor", "Jack Baginski", "Jack Hamilton", "Jillian Campbell", "John Craigie", "John Holman", "John Maguire", "John Pults", "Jones Melton", "Tyler Keating", "Kenton Lin", "Kevin Serrano", "Kevin Sullivan", "Kyle Rombach", "Laura Montoya", "Luis Ybarra", "Charlotte Manetta", "Martina Osteyee-Hoffman", "Megan Swanby", "Michael London", "Michael Wang", "Michael Yao", "Mike Gwozdek", "Miqueas Hernandez", "Mitchell Kroska", "Norberto Caceres", "Onofre Echevarria", "Patrick Skelley", "Peter Kang", "Philip Chung", "Phillip Barnett", "Pietro Martini", "Robbie Santos", "Rokas Simkonis", "Ronesh Ghoshal", "Ryan Nebuda", "Ryan Smith", "Saralis Rivera", "Sam Assadi", "Spencer Alexander", "Stephanie Major", "Taylor Daugherty", "Thomas Farr", "Maeve Tierney", "Tori Huang", "Alexander Williams", "Victor Wong", "Xin Zhang", "Zach Barton"]

fifteen = ["Aaron Figueroa", "Alivia Blount", "Allison Scofield", "Alyssa Page", "Alyssa Ransbury", "Andria Reta", "Austin Dorff", "Autumn McFeeley", "Ayaz Uddin", "Ben Giamarino", "Benjamin Heidebrink", "Bethelhem Assefa", "Robert Reith", "Dana Breen", "Zach Barton"]

fourteen = ["Aaron Figueroa", "Alivia Blount", "Allison Scofield", "Alyssa Page", "Alyssa Ransbury", "Andria Reta", "Austin Dorff", "Autumn McFeeley", "Ayaz Uddin", "Ben Giamarino", "Benjamin Heidebrink", "Bethelhem Assefa", "Robert Reith", "Dana Breen"]

thirteen = ["Aaron Figueroa", "Alivia Blount", "Allison Scofield", "Alyssa Page", "Alyssa Ransbury", "Andria Reta", "Austin Dorff", "Autumn McFeeley", "Ayaz Uddin", "Ben Giamarino", "Benjamin Heidebrink", "Bethelhem Assefa", "Robert Reith"]

twelve = ["Aaron Figueroa", "Alivia Blount", "Allison Scofield", "Alyssa Page", "Alyssa Ransbury", "Andria Reta", "Austin Dorff", "Autumn McFeeley", "Ayaz Uddin", "Ben Giamarino", "Benjamin Heidebrink", "Bethelhem Assefa"]

eleven = ["Aaron Figueroa", "Alivia Blount", "Allison Scofield", "Alyssa Page", "Alyssa Ransbury", "Andria Reta", "Austin Dorff", "Autumn McFeeley", "Ayaz Uddin", "Ben Giamarino", "Benjamin Heidebrink"]

ten = ["Aaron Figueroa", "Alivia Blount", "Allison Scofield", "Alyssa Page", "Alyssa Ransbury", "Andria Reta", "Austin Dorff", "Autumn McFeeley", "Ayaz Uddin", "Ben Giamarino"]

two = ["Aaron Figueroa", "Alivia Blount"]

puts "Fifteen"
puts assign_accountability_groups(fifteen)

puts "Fourteen"
puts assign_accountability_groups(fourteen)

puts "Thirteen"
puts assign_accountability_groups(thirteen)

puts "Twelve"
puts assign_accountability_groups(twelve)

puts "Eleven"
puts assign_accountability_groups(eleven)

puts "Ten"
puts assign_accountability_groups(ten)

puts "Two"
puts assign_accountability_groups(two)

puts ""

puts "Actual Sealions Team!"
puts assign_accountability_groups(sealions)

=begin

What was the most interesting and most difficult part of this challenge?

The best part of this challenge was the open ended aspect! You could make it as detailed as you wanted. I really enjoyed that. I struggled with creating workable situations for if someone wanted to sort a team of 10 - 16, but I think I figured out a solution!

Do you feel you are improving in your ability to write pseudocode and break the problem down?

The pseudocode is slowly improving. It still needs practice, for sure.

Was your approach for automating this task a good solution? What could have made it even better?

I believe my approach for automating this task is acceptable. I am positive there are better solutions out there though.

What data structure did you decide to store the accountability groups in and why?

I decided to use a hash, as it was easiest to declare and fill for what I was trying to do.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I learned that you should leave a TON of time for refactoring!

=end