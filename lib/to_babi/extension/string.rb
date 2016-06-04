class String
  include Babi
  def to_babi
    self.chars.map{|t| convert_babi(t)}.join
  end

  private
  def convert_babi(str)
    STRING_MAP.each do |l, c|
      return str + c if l.include? str
    end
    str
  end
end