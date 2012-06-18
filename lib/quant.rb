require "quant/version"

module Quant

  def self.sma(values, n)
    acc = 0
    values.inject_with_index([]) do |m, e, i|
      acc += e
      if i < (n - 1)
        m << not_a_number
      elsif i == (n - 1)
        m << acc / n
      else
        acc = acc - values[i - n]
        m << acc / n
      end
    end
  end

  def self.donchian_channel(ohlc, n)
    dc = []
    ohlc.each_with_index do |e, i|
      if i < (n - 1)
        dc << [not_a_number, not_a_number]
      else
        c = ohlc[(i - n + 1)..(i)].flatten
        dc << [c.max, c.min]
      end
    end
    dc
  end

  private

  def self.not_a_number
    0 / 0.0
  end

end
