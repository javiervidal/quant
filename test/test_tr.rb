require 'common_requires'

class TestTr < MiniTest::Unit::TestCase

  def test_eurusd_50_tr
    c = Util.ohlc(Samples::Ohlc.eurusd_50_opens, Samples::Ohlc.eurusd_50_highs, Samples::Ohlc.eurusd_50_lows, Samples::Ohlc.eurusd_50_closes)
    assert Util.compare_2_arrays_of_floats Quant.tr(c), Samples::Ttr.eurusd_50_ttr_tr
  end

  def test_usdjpy_150_tr
    c = Util.ohlc(Samples::Ohlc.usdjpy_150_opens, Samples::Ohlc.usdjpy_150_highs, Samples::Ohlc.usdjpy_150_lows, Samples::Ohlc.usdjpy_150_closes)
    assert Util.compare_2_arrays_of_floats Quant.tr(c), Samples::Ttr.usdjpy_150_ttr_tr
  end

end
