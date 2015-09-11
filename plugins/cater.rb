class Cater
  include Cinch::Plugin

  match "cater"

  def execute(m)
    cater = "╚═( ͡° ͜ʖ ͡°)═╝\n╚═(███)═╝\n╚═(███)═╝\n.╚═(███)═╝\n..╚═(███)═╝\n…╚═(███)═╝\n…╚═(███)═╝\n..╚═(███)═╝\n.╚═(███)═╝\n╚═(███)═╝\n.╚═(███)═╝\n..╚═(███)═╝\n…╚═(███)═╝\n…╚═(███)═╝\n…..╚(███)╝\n……╚(██)╝\n………(█)\n……….*"
    m.reply Format(:pink, cater)
  end
end
