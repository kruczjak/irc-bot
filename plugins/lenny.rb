class Lenny
  include Cinch::Plugin

  match "lenny"

  def execute(m)
    m.reply "( ͡° ͜ʖ ͡°)"
  end
end
