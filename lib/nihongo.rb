# coding: utf-8

module Nihongo
  class << self
    def katakana_rage
      'ァ-ヴ'
    end

    def hiragana_rage
      'ぁ-ゔ'
    end

    def hankaku_eiji_range
      'A-z'
    end

    def zenkaku_eiji_range
      'Ａ-ｚ'
    end

    def hankaku_suuji_range
      '0-9'
    end

    def zenkaku_suuji_range
      '０-９'
    end

    def hankaku_katakana
      'ﾊﾋﾌﾍﾎｳｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄｱｲｴｵﾅﾆﾇﾈﾉﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜｦﾝｧｨｩｪｫｬｭｮｯ'
    end

    def zenkaku_katakana
      'ハヒフヘホウカキクケコサシスセソタチツテトアイエオナニヌネノマミムメモヤユヨラリルレロワヲンァィゥェォャュョッ'
    end

    def dakuon
      'バビブベボヴガギグゲゴザジズゼゾダヂヅデド'
    end

    def handakuon
      'パピプペポ'
    end

    def hankaku_kigou
      ' !"#$%&\'()*+,-./:;<=>?@[\]^_`{|}~｡｢｣､ｰﾞﾟ･'
    end

    def hankaku_kigou_with_escape
      self.hankaku_kigou.gsub(/[\-\^\\]/){ "\\" + $& }
    end

    def zenkaku_kigou
      '　！”＃＄％＆’（）＊＋，－．／：；＜＝＞？＠［￥］＾＿‘｛｜｝￣。「」、ー゛゜・'
    end

    def dakuon_kigou
      {
        0 => 'ﾞ',
        1 => 'ﾟ'
      }
    end

    def hankaku_katakana_matcher
      /([ｦ-ｯｱ-ﾝ])([ﾞﾟ]?)/
    end

    def zenkaku_katakana_matcher
      /[#{Nihongo.zenkaku_katakana}#{Nihongo.dakuon}#{Nihongo.handakuon}]/
    end
  end
end

require 'nihongo/version'
require 'nihongo/core_ext/string'
