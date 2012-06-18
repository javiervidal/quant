require "quant/version"

module Quant

  def self.sma(values, n)
    acc = 0
    values.inject_with_index([]) do |m, e, i|
      acc += e
      if i < (n - 1)
        m << (0 / 0.0) # NaN
      elsif i == (n - 1)
        m << acc / n
      else
        acc = acc - values[i - n]
        m << acc / n
      end
    end
  end

end
