require 'cinch'
require 'open-uri'

Dir["./plugins/*.rb"].each {|file| require file }

bot = Cinch::Bot.new do
  configure do |c|
    c.nick = "bocik"
    c.server = "irc.freenode.org"
    c.channels = ["#i@eaiie"]
    c.plugins.plugins = [Hello, Lenny, Cinch::LinkInfo, Cinch::Mail]
  end

end

bot.start
