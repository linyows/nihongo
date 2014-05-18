require 'helper'

describe Nihongo do
  let(:zenkaku_sentence) do
    'オッスオラ悟空！イッチョやってミッカ！　ｐａｒｔ３８　ゴゴゴ、ガキグゲゴ？ドッキャン　ピシャパシペ師'
  end

  let(:hankaku_sentence) do
    'ｵｯｽｵﾗ悟空!ｲｯﾁｮやってﾐｯｶ! part38 ｺﾞｺﾞｺﾞ､ｶﾞｷｸﾞｹﾞｺﾞ?ﾄﾞｯｷｬﾝ ﾋﾟｼｬﾊﾟｼﾍﾟ師'
  end

  describe '.to_hankaku' do
    it 'returns hankaku sentence' do
      expect(zenkaku_sentence.to_hankaku).to eq hankaku_sentence
    end
  end

  describe '.to_zenkaku' do
    it 'returns zenkaku sentence' do
      expect(hankaku_sentence.to_zenkaku).to eq zenkaku_sentence
    end
  end

  let(:sentence) do
    <<-NIHONGO.compact
      あのイーハトーヴォのすきとおった風、
      夏でも底に冷たさをもつ青いそら、
      うつくしい森で飾られたモリーオ市、
      郊外のぎらぎらひかる草の波
      パピプペポ だぢづでど ぁぃぅぇぉヵヶっゃゅょゎ
    NIHONGO
  end

  let(:katakana_sentence) do
    <<-NIHONGO.compact
      アノイーハトーヴォノスキトオッタ風、
      夏デモ底ニ冷タサヲモツ青イソラ、
      ウツクシイ森デ飾ラレタモリーオ市、
      郊外ノギラギラヒカル草ノ波
      パピプペポ ダヂヅデド ァィゥェォヵヶッャュョヮ
    NIHONGO
  end

  let(:hiragana_sentence) do
    <<-NIHONGO.compact
      あのいーはとーゔぉのすきとおった風、
      夏でも底に冷たさをもつ青いそら、
      うつくしい森で飾られたもりーお市、
      郊外のぎらぎらひかる草の波
      ぱぴぷぺぽ だぢづでど ぁぃぅぇぉヵヶっゃゅょゎ
    NIHONGO
  end

  describe '.to_katakana' do
    it 'returns katakana sentence' do
      expect(sentence.to_katakana).to eq katakana_sentence
    end
  end

  describe '.to_hankaku' do
    it 'returns hiragana sentence' do
      expect(sentence.to_hiragana).to eq hiragana_sentence
    end
  end
end
