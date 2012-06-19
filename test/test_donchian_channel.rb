require 'common_requires'

class TestDonchianChannel < MiniTest::Unit::TestCase

  def test_eurusd_50_donchian_channel_20_highs
    c = Util.ohlc(Samples::Ohlc.eurusd_50_opens, Samples::Ohlc.eurusd_50_highs, Samples::Ohlc.eurusd_50_lows, Samples::Ohlc.eurusd_50_closes)
    assert Util.compare_2_arrays_of_floats Quant.donchian_channel(c, 20).highs , Samples::Ttr.eurusd_50_ttr_donchian_channel_20_highs
  end

  def test_eurusd_50_donchian_channel_20_lows
    c = Util.ohlc(Samples::Ohlc.eurusd_50_opens, Samples::Ohlc.eurusd_50_highs, Samples::Ohlc.eurusd_50_lows, Samples::Ohlc.eurusd_50_closes)
    assert Util.compare_2_arrays_of_floats Quant.donchian_channel(c, 20).lows , Samples::Ttr.eurusd_50_ttr_donchian_channel_20_lows
  end

  def test_usdjpy_150_donchian_channel_55_highs
    c = Util.ohlc(Samples::Ohlc.usdjpy_150_opens, Samples::Ohlc.usdjpy_150_highs, Samples::Ohlc.usdjpy_150_lows, Samples::Ohlc.usdjpy_150_closes)
    assert Util.compare_2_arrays_of_floats Quant.donchian_channel(c, 55).highs , Samples::Ttr.usdjpy_150_ttr_donchian_channel_55_highs
  end

  def test_usdjpy_150_donchian_channel_55_lows
    c = Util.ohlc(Samples::Ohlc.usdjpy_150_opens, Samples::Ohlc.usdjpy_150_highs, Samples::Ohlc.usdjpy_150_lows, Samples::Ohlc.usdjpy_150_closes)
    assert Util.compare_2_arrays_of_floats Quant.donchian_channel(c, 55).lows , Samples::Ttr.usdjpy_150_ttr_donchian_channel_55_lows
  end

end
