# coding: utf-8

class String
  def to_zenkaku
    str = self
    str = str.to_zenkaku_eiji
    str = str.to_zenkaku_suuji
    str = str.to_zenkaku_katakana
  end

  def to_zenkaku_eiji
    self.tr(Nihongo.hankaku_eiji_range, Nihongo.zenkaku_eiji_range)
  end

  def to_zenkaku_suuji
    self.tr(Nihongo.hankaku_suuji_range, Nihongo.zenkaku_suuji_range)
  end

  def to_zenkaku_katakana
    str = self

    str= str.gsub(Nihongo.hankaku_katakana_matcher) do
      pos = Nihongo.hankaku_katakana.index($1)
      case Nihongo.dakuon_kigou.invert[$2]
      when 0 then Nihongo.dakuon[pos]
      when 1 then Nihongo.handakuon[pos]
      else Nihongo.zenkaku_katakana[pos] + $2
      end
    end

    str = str.tr(Nihongo.hankaku_katakana, Nihongo.zenkaku_katakana)
    str = str.tr(Nihongo.hankaku_kigou_with_escape, Nihongo.zenkaku_kigou)
  end

  def to_hankaku
    str = self
    str = str.to_hankaku_eiji
    str = str.to_hankaku_suuji
    str = str.to_hankaku_katakana
  end

  def to_hankaku_eiji
    self.tr(Nihongo.zenkaku_eiji_range, Nihongo.hankaku_eiji_range)
  end

  def to_hankaku_suuji
    self.tr(Nihongo.zenkaku_suuji_range, Nihongo.hankaku_suuji_range)
  end

  def to_hankaku_katakana
    str = self

    str = str.gsub(Nihongo.zenkaku_katakana_matcher) do
      3.times do |n|
        pos = case n
          when 0 then Nihongo.dakuon.index($&)
          when 1 then Nihongo.handakuon.index($&)
          when 2 then Nihongo.zenkaku_katakana.index($&)
          end
        break "#{Nihongo.hankaku_katakana[pos]}#{Nihongo.dakuon_kigou[n]}" if pos
      end
    end

    str = str.tr(Nihongo.zenkaku_katakana, Nihongo.hankaku_katakana)
    str = str.tr(Nihongo.zenkaku_kigou, Nihongo.hankaku_kigou_with_escape)
  end

  def to_katakana
    self.tr(Nihongo.hiragana_rage, Nihongo.katakana_rage)
  end

  def to_hiragana
    self.tr(Nihongo.katakana_rage, Nihongo.hiragana_rage)
  end
end
