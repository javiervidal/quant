require 'common_requires'

class TestSma < MiniTest::Unit::TestCase

  def test_eurusd_50_sma10
    assert Util.compare_2_arrays_of_floats Quant.sma(Samples::Ohlc.eurusd_50_closes, 10), Samples::Ttr.eurusd_50_ttr_sma10
  end

  def test_usdjpy_150_sma25
    assert Util.compare_2_arrays_of_floats Quant.sma(Samples::Ohlc.usdjpy_150_closes, 25), Samples::Ttr.usdjpy_150_ttr_sma25
  end

end
