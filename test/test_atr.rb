require 'common_requires'

class TestAtr < MiniTest::Unit::TestCase

  def test_eurusd_50_atr20
    c = Util.ohlc(Samples::Ohlc.eurusd_50_opens, Samples::Ohlc.eurusd_50_highs, Samples::Ohlc.eurusd_50_lows, Samples::Ohlc.eurusd_50_closes)
    assert Util.compare_2_arrays_of_floats Quant.atr(c, 20), Samples::Ttr.eurusd_50_ttr_atr_20
  end

  def test_usdjpy_150_atr32
    c = Util.ohlc(Samples::Ohlc.usdjpy_150_opens, Samples::Ohlc.usdjpy_150_highs, Samples::Ohlc.usdjpy_150_lows, Samples::Ohlc.usdjpy_150_closes)
    assert Util.compare_2_arrays_of_floats Quant.atr(c, 32), Samples::Ttr.usdjpy_150_ttr_atr_32
  end

end
