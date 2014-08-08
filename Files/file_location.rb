#file location

puts "C:\\Users\\Bogdan\\Dropbox";
puts File.join("", "Users", "Bogdan", "Dropbox", "learn", "ruby", "Files");

puts __FILE__
puts File.expand_path(__FILE__)

puts File.dirname(__FILE__)

puts File.join(File.dirname(__FILE__), '..', 'Clase')