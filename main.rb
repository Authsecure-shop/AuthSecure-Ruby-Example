require './AuthSecure.rb'

AuthSecure.new.Api(
  "XD", # Application Name
  "3ezshCmkXrn", # Application OwnerID
  "7a8bfeb28afcd690812ee5de010a6860", # Application Secret
  "1.0" # Application Version
)

puts "\nConnecting..."
AuthSecure.new.Init

puts "\n1) Login"
puts "2) Register"
puts "3) License Login"
puts "4) Exit"
print "\nChoose: "
opt = gets.chomp

case opt
when '1'
  print "Username: "; u = gets.chomp
  print "Password: "; p = gets.chomp
  AuthSecure.new.Login(u, p)
when '2'
  print "Username: "; u = gets.chomp
  print "Password: "; p = gets.chomp
  print "License: "; k = gets.chomp
  AuthSecure.new.Register(u, p, k)
when '3'
  print "License: "; k = gets.chomp
  AuthSecure.new.License(k)
else
  puts "Goodbye!"
end