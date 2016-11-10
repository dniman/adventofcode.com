class String
  def hexadecimal?
    self == self.match(/\h*/).to_s
  end
end  

module Day4
  class MD5
    def self.hash(message)
      #@message_digest = Array.new(32){"a"}
      #congruent_message = message.chars.push(1).join("")
      #return @message_digest.join('').hex.to_s(16)
    end

    def self.append_padding_bits(message)
      message_length = message.length % 512
      message = message.chars.push(1).join("")
      if message_length < 448
        message = message.chars.concat(Array.new(447-message_length){0}).join("")
      elsif message_length == 448
        message = message.chars.concat(Array.new(511){0}).join("")
      end    
      message
    end         
  end    
end  