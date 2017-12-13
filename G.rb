
class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end

class SpaceFinal < Scene
  def enter()
    puts "\n"
    puts "You've arrived at the Browning school"
    puts "Or what's left of it, atleast..."
    puts "You see the head of the school, Dr. soul, weeping on the ground"
    puts "He Yells, 'THIS WASN'T SUPPOSED TO BE LIKE THIS,"
    puts "O WHAT MISERY!'"
    puts "He scrambles up to you and grabs you by the collar hysterically"
    puts "'Your Browning, along with space and time's FINAL HOPE,' he blurts out"
    puts "'PLEASE, use this time machine and save my school'"
    puts "What do you do:"
    puts "Accept"
    puts "Decline"
    puts "Ask him why he cannot do it himself"
    meaningless = $stdin.gets.chomp
    puts "\n"
    puts "Before you could respond to his plight, he throws you into"
    puts "this time machine and you appear in front of the Browning school"
    puts "However, this seems like an actually ordinary day"
    puts "FIN PART 1"
    puts "THANK YOU FOR PLAYING"
    puts "PART 2 COMING EVENTUALLY ;)"
    exit(1)
  end
end
class Space2 < Scene
  def enter()
    puts "\n"
    puts "What will you do to with these hoodlums:"
    puts "Fight them"
    puts "Converse with them"
    puts "Eavesdrop on their conversation"
    puts "Ignore them"
  spaceact2 = $stdin.gets.chomp
    if spaceact2 == "1"
      puts "\n"
      puts "You throw a punch at the closest one"
      puts "You sucessfull hit him, however his friend takes out"
      puts "A shotgun blows your head off"
      return 'death'
    elsif spaceact2 == "2"
      puts "\n"
      puts "You say hi and introduce yourself"
      puts "They all turn around to look at you, then"
      puts "They all scatter out of there"
      puts "Oh well, you continue toward the school"
      return 'sdfinal'
    elsif spaceact2 == "3"
      puts "\n"
      puts "You sneak up to their huddle, close enough to hear their whispers"
      puts "'HAHAH, we actually DID IT, we destroyed space and time along with the Browning School'"
      puts "One of them says"
      puts "His friends cackle with him"
      puts "'I can't believe it was that EASY'"
      puts "The 2nd one scoffs"
      puts "'Yeah, not a single person tried to stop us'"
      puts "The 3rd one YAHOOs out of his mouth"
      puts "The 1st one starts doing a dance, but ends up noticing you,"
      puts "which causes him and the others to scatter"
      puts "You continue your journey toward the school"
      return 'sdfinal'
    elsif spaceact2 == "4"
      puts "\n"
      puts "You ignore the hooded figures and continue towards the school"
      return 'sdfinal'
    else 
      return 'sd2'
end
end
class Space < Scene
  def enter()
    puts "\n"
    puts "You are on a platform of land with your house"
    puts "There are other platforms around, as well as an abyss below you"
    puts "Do you:"
    puts "Jump one by one to each platform, attempting to get to school"
    puts "Jump into the void"
    puts "Go inside and call it a sick day"
    spaceact = $stdin.gets.chomp
      if spaceact == "1"
        puts "\n"
        puts "You sucessfully jump to the next platform"
        puts "And the next one"
        puts "And th- WAIT"
        puts "There are three hooded figures standing on the platform in front of you"
        puts "They don't seem to notice you as they are hudled together"
        return 'sd2'
      elsif spaceact == "2"
      puts "\n"
        puts "You died, what didja think would happen?"
        return 'death'
      elsif spaceact == "3"
      puts "\n"
        puts "You go inside, as if nothing ever happened"
        puts "YOU WIN"
      else
        return 'sd'
  end
end

class Death < Scene

  def enter()
    puts "GAME OVER, YOU LOSE"
    exit(1)
  end
end

class Bathroom < Scene
  
def enter()
  puts "\n"
  puts "Would you like to:"
  puts "Brush your teeth"
  puts "Take a Shower"
  puts "Go to the toilet"
  puts "leave"
  
  bathact = $stdin.gets.chomp
  
    if bathact == "1"
      puts "clean and white and very nice"
      return 'bathroom'
    elsif bathact == "2"
      puts "Your squeaky clean now"
      return 'bathroom'
    elsif bathact == "3"
      puts "Kek, you did your business"
      return 'bathroom'
    elsif bathact == "4"
      return 'bedroom'
    else
      puts "?"
      return 'bathroom'
  end
end

class Droom < Scene
  
def enter()
  puts "\n"
  puts "What would you like to eat"
  puts "Milk and cereal"
  puts "Cereal and milk"
  puts "Waffles"
  puts "a singular whole banana"
  puts "Omlette"
  puts "Leave"
  
  dract = $stdin.gets.chomp
  
    if dract == "1" || "2" || "5"
      puts "OMNOMNOM"
      return 'bedroom'
    elsif dract == "4"
      puts "You 'accidentally' put the whole banana in your throat and choke and die."
      return 'death'
    elsif dract == "3"
      puts "DO YOU LIKE WAFFLES?"
      puts "YEAH WE LIKE WAFFLES!"
      return 'bedroom'
    elsif dract == "6"
      return 'bedroom'
    else
      puts "?"
      return 'droom'
  end
end


class Bedroom < Scene
  
  def enter()
    puts "\n"
    puts "Your in your room, what do you do:"
    puts "1. Get dressed"
    puts "2. Go back to Sleep"
    puts "3. Go to the Bathroom"
    puts "4. Go to the Diningroom"
    puts "5. Leave the Building"
    puts "Answer should be given as number of choice"
    
    braction = $stdin.gets.chomp
    
     if braction == "1"
      puts "\n"
      puts "What do you want to wear?"
      puts "Something Plain"
      puts "Something swanky"
      puts "A sweatshirt"
      braction2 = $stdin.gets.chomp
        if braction2 == "1"
          puts "You choose a white shirt and a red tie."
          return 'bedroom'
        elsif braction2 == "2"
          puts "You choose a bright purple shirt and a bright green sparkly bow tie."
          return 'bedroom'
        elsif braction2 == "3"
          puts "You put on a red sweatshirt with the Browning logo on it"
          return 'bedroom'
        else 
        puts "Guess ya don't change?"
        return 'bedroom'
      end

    elsif braction == "2"
      puts "You decide to go back to bed cuz this day is a waste of your time."
      puts  "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
      puts  "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz.........."
      puts  "z?"
      puts  "You sleep through the whole day and that was that..."
      puts  "YOU WIN! CONGRATULATIONS"
      exit(1)

    elsif braction == "3"
      return 'bathroom'
      
    elsif braction == "4"
      return 'droom'
    elsif braction == "5"
      puts "\n"
      puts "You start walking to school, but realize"
      puts "That space and time have fallen appart"
      puts "Instead of the world being how you once knew it to be"
      puts "It is shreded into billions of different pieces"
      return 'sd'
    else 
      return 'broom'
    end
  end
end

class CentralCorridor < Scene

  def enter()
    puts "An Ordinary Day at the Browning School Part 1"
    puts "By Maximilian Motz"
    puts "\n"
    puts "DISCLAIMER: Every character in this game is NOT a real person at Browning in order for me to avoid conflict."
    puts "If you think you weren't accurately portrayed in this game, your wrong cuz its NOT YOU!"
    puts "BTW the player is YOU, not the fictional version of me or otherwise"
    puts "\n"
    puts "You awaken"
    puts "Lucky you, its panther day (this is fiction btw) at Browning and you have no classes!"
    puts "Don't get the wrong idea though, your momma's still gonna make you go to school..."
    return 'bedroom'
  end
end


class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'death' => Death.new(),
    'bedroom' => Bedroom.new(),
    'bathroom' => Bathroom.new(),
    'droom' => Droom.new(),
    'sd' => Space.new(),
    'sd2' => Space2.new(),
    'sdfinal' =>SpaceFinal.new()
  }


  def initialize(start_scene)
    @start_scene = start_scene
  end


  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
end
end
end
end
