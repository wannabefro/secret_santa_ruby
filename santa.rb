require 'csv'

class SecretSanta
  def initialize
    @group = Group.new
    get_participants
  end

  def get_participants
    if get_choice == 'txt'
      ParticipantReader.new(get_file_name)
    else
      puts 'goodbye'
    end
  end

  def get_file_name
    puts 'Please enter the file name'
    file = gets.chomp
    if valid_txt_file(file)
      file
    else
      puts 'Sorry that\'s not a valid txt file'
      get_file_name
    end
  end
  
  def valid_txt_file(file)
    File.exists?(file) && file =~ /(\.txt)\z/
  end

  def get_choice
    puts 'How would you like to upload names?'
    puts 'Enter txt for a text file or manual to do it manually'
    gets.chomp
  end
end

class Group
  attr_accessor :participants
  def initialize
    @participants = []
  end
end

class Participant
  def initialize(name)
    @name = name
  end
end

class Matchmaker
  def initialize(participants, size=2)
    @participants = participants
    @size = size
  end

  def match

  end

end

class ParticipantReader
  def initialize(filename)
    @filename = filename
  end

  def import_participants

  end
end

