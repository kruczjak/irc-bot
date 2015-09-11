class Lenny
  include Cinch::Plugin

  LENNY = ['( ͡° ͜ʖ ͡°)',	'( ͠° ͟ʖ ͡°)',	'ᕦ( ͡° ͜ʖ ͡°)ᕤ',	'( ͡~ ͜ʖ ͡°)', '( ͡o ͜ʖ ͡o)', '	͡° ͜ʖ ͡ -',	'( ͡͡ ° ͜ ʖ ͡ °)','( ͡ ͡° ͡°  ʖ ͡° ͡°)','(ง ͠° ͟ل͜ ͡°)ง','( ͡° ͜ʖ ͡ °)','(ʖ ͜° ͜ʖ)','[ ͡° ͜ʖ ͡°]','ヽ༼ຈل͜ຈ༽ﾉ','( ͡o ͜ʖ ͡o)','{ ͡• ͜ʖ ͡•}','( ͡° ͜V ͡°)','( ͡^ ͜ʖ ͡^)','( ‾ʖ̫‾)','( ͡°╭͜ʖ╮͡° )','ᕦ( ͡°╭͜ʖ╮͡° )ᕤ']

  match "lenny", method: :lenny
  match /lenny (.+)/, method: :from_array

  def from_array(m, data)
    if (data.to_i >= LENNY.length)
      m.reply "Array with lenny length: 20"
    else
      m.reply Format(:lime, LENNY[data.to_i])
    end
  end

  def lenny(m)
    m.reply Format(:lime, LENNY[0])
  end
end
