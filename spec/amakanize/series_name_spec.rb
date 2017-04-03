RSpec.describe Amakanize::SeriesName do
  let(:series_name) do
    described_class.new(raw)
  end

  describe "#to_s" do
    subject do
      series_name.to_s
    end

    {
      "ふ~ふ 1 (IDコミックス 百合姫コミックス)" => "ふ", # TODO
      "RYU-TMRのレゲー解体劇場 - 昭和アーケードゲーム編 - (ガムコミックス)" => "RYU-TMRのレゲー解体劇場 - 昭和アーケードゲーム編",
      "小林さんちのメイドラゴン 公式アンソロジー ： 2 (アクションコミックス)" => "小林さんちのメイドラゴン 公式アンソロジー",
      "ＢＬＯＯＤ‐Ｃ　（１） (角川コミックス・エース 162-9)" => "BLOOD-C",
      "Buso Renkin, Vol. 5" => "Buso Renkin",
      "D.Gray-man 25 (ジャンプコミックス)" => "D.Gray-man",
      "D.Gray‐man (4) (ジャンプ・コミックス)" => "D.Gray-man",
      "D.Grayーman 10 (ジャンプコミックス)" => "D.Gray-man",
      "Hero and Daughter　Lv1からはじめる勇者奪還作戦 (角川スニーカー文庫)" => "Hero and Daughter Lv1からはじめる勇者奪還作戦",
      "IS〈インフィニット・ストラトス〉 1 (MFコミックス アライブシリーズ)" => "IS (インフィニット・ストラトス)",
      "IS〈インフィニット・ストラトス〉 1 (オーバーラップ文庫)" => "IS (インフィニット・ストラトス)",
      "IS<インフィニット・ストラトス> 2 (MFコミックス アライブシリーズ)" => "IS (インフィニット・ストラトス)",
      "IS<インフィニット・ストラトス>9 (オーバーラップ文庫)" => "IS (インフィニット・ストラトス)",
      "JavaScript 第6版" => "JavaScript",
      "NHK 世界遺産100 2011年 1/25号 [雑誌]" => "NHK 世界遺産100",
      "the Sneaker (ザ・スニーカー) 2010年 06月号 [雑誌]" => "the Sneaker (ザ・スニーカー)",
      "To LOVEる -とらぶる- ダークネス" => "To LOVEる (とらぶる) ダークネス",
      "To LOVEる -とらぶる-" => "To LOVEる",
      "To LOVEる―とらぶる― ダークネス 12 (ジャンプコミックス)" => "To LOVEる (とらぶる) ダークネス",
      "WEB+DB PRESS Vol.34" => "WEB+DB PRESS",
      "アド・アストラ 1 ─スキピオとハンニバル─ (ヤングジャンプコミックス・ウルトラ)" => "アド・アストラ",
      "アド・アストラ 2―スキピオとハンニバル (ヤングジャンプコミックス・ウルトラ)" => "アド・アストラ",
      "アニウッド大通り　１: アニメ監督一家物語" => "アニウッド大通り",
      "アフタヌーン 2014年12月号 [2014年10月25日発売] [雑誌] (アフタヌーンコミックス)" => "アフタヌーン",
      "アフタヌーン 2016年 05 月号 [雑誌]" => "アフタヌーン",
      "アフタヌーン大収穫祭2014～出会い～特別無料試し読み号～ [雑誌] (アフタヌーンコミックス)" => "アフタヌーン大収穫祭2014 (出会い) 特別無料試し読み号",
      "週刊少年マガジン 2016年48号[2016年10月26日発売] [雑誌]" => "週刊少年マガジン",
      "週刊少年サンデー 2016年48号(2016年10月26日発売) [雑誌]" => "週刊少年サンデー",
      "週刊少年チャンピオン2016年47号 [雑誌]" => "週刊少年チャンピオン",
      "アリスと蔵六 (2) (リュウコミックス)" => "アリスと蔵六",
      "アリスと蔵六 1 (リュウコミックス)" => "アリスと蔵六",
      "イブニング 2016年 6/28 号 [雑誌]" => "イブニング",
      "ウメハラ  FIGHTING GAMERS! (4) (カドカワコミックス・エース)" => "ウメハラ FIGHTING GAMERS!",
      "サード 2016年 7/20 号 [雑誌]: ヤングマガジン 増刊" => "サード",
      "ジャンプSQ. 2016年9月号 (未分類)" => "ジャンプSQ.",
      "ジャンプSQ.CROWN 2016 SPRING (未分類)" => "ジャンプSQ.CROWN",
      "ジャンプSQ.CROWN 2016 SUMMER (未分類)" => "ジャンプSQ.CROWN",
      "なれる!SE 2週間でわかる?SE入門 (電撃文庫)" => "なれる!SE 2週間でわかる?SE入門",
      "ネトゲの嫁は女の子じゃないと思った? Lv.2 (電撃文庫)" => "ネトゲの嫁は女の子じゃないと思った?",
      "ネメシス #22 [2015年6月9日発売] [雑誌] (シリウスコミックス)" => "ネメシス",
      "ばくおん! ! (7)(ヤングチャンピオン烈コミックス)" => "ばくおん!!",
      "バグゲーブレイカー! 2 ~Lv99だけどまだ本気出してない~ (オーバーラップ文庫)" => "バグゲーブレイカー!",
      "パパLv.1 ２" => "パパLv.1",
      "パパＬｖ１" => "パパLv1",
      "まおゆう魔王勇者 「この我のものとなれ、勇者よ」「断る! 」 (3) (カドカワコミックスAエース)" => "まおゆう魔王勇者 「この我のものとなれ、勇者よ」「断る!」",
      "やはり俺の青春ラブコメはまちがっている。4" => "やはり俺の青春ラブコメはまちがっている。",
      "ヤマノススメ volume 3 (アース・スターコミックス)" => "ヤマノススメ",
      "ラブライブ! School idol diary ~星空凛~" => "ラブライブ! School idol diary",
      "俺がお嬢様学校に「庶民サンプル」として拉致られた件 10 (IDコミックス REXコミックス)" => "俺がお嬢様学校に「庶民サンプル」として拉致られた件",
      "俺がお嬢様学校に「庶民サンプル」として拉致られた件5 通常版 (一迅社文庫)" => "俺がお嬢様学校に「庶民サンプル」として拉致られた件",
      "俺がお嬢様学校に「庶民サンプル」として拉致られた件7.5 (一迅社文庫)" => "俺がお嬢様学校に「庶民サンプル」として拉致られた件",
      "僕だけがいない街 (1) (カドカワコミックス・エース)" => "僕だけがいない街",
      "冴えない彼女の育てかた (9)" => "冴えない彼女の育てかた",
      "冴えない彼女の育てかた~egoistic‐lily~ (1) (カドカワコミックス・エース)" => "冴えない彼女の育てかた (egoistic-lily)",
      "刀語 第十一話 毒刀・鍍 (ドクトウ・メッキ) (講談社BOX)" => "刀語",
      "別冊少年マガジン 2014年9月号 [2014年8月9日発売] [雑誌] (週刊少年マガジンコミックス)" => "別冊少年マガジン",
      "千と万(1) (アクションコミックス(コミックハイ! ))" => "千と万",
      "娘TYPE (にゃんタイプ) Vol.4 2010年 01月号 [雑誌]" => "娘TYPE (にゃんタイプ)",
      "普通の女子校生が〈ろこどる〉やってみた。 1 (IDコミックス 4コマKINGSぱれっとコミックス)" => "普通の女子校生が (ろこどる) やってみた。",
      "普通の女子校生が【ろこどる】やってみた。 (2) (IDコミックス 4コマKINGSぱれっとコミックス)" => "普通の女子校生が (ろこどる) やってみた。",
      "東京レイヴンズEX1party in nest" => "東京レイヴンズEX1party in nest",
      "白騎士物語-episode.0-ドグマ戦記" => "白騎士物語",
      "神さまのいない日曜日VII (富士見ファンタジア文庫)" => "神さまのいない日曜日",
      "第六大陸〈1〉 (ハヤカワ文庫JA)" => "第六大陸",
      "終末なにしてますか? もう一度だけ、会えますか?#01 (角川スニーカー文庫)" => "終末なにしてますか? もう一度だけ、会えますか?",
      "終末なにしてますか? 忙しいですか? 救ってもらっていいですか?#05 (角川スニーカー文庫)" => "終末なにしてますか? 忙しいですか? 救ってもらっていいですか?",
      "聖剣使いの禁呪詠唱〈ワールドブレイク〉 (GA文庫)" => "聖剣使いの禁呪詠唱 (ワールドブレイク)",
      "聖剣使いの禁呪詠唱《ワールドブレイク》10 (GA文庫)" => "聖剣使いの禁呪詠唱 (ワールドブレイク)",
      "聖剣使いの禁呪詠唱<ワールドブレイク> 4 (GA文庫)" => "聖剣使いの禁呪詠唱 (ワールドブレイク)",
      "艦隊これくしょん -艦これ- 島風 つむじ風の少女 (3) (電撃コミックスNEXT)" => "艦隊これくしょん (艦これ) 島風 つむじ風の少女",
      "講談社テレビコミックス ウルトラセブン(上) (KCデラックス)" => "講談社テレビコミックス ウルトラセブン",
      "達人伝 -9万里を風に乗り-(3) (アクションコミックス)" => "達人伝 (9万里を風に乗り)",
      "関係はまだLv.1 (drapコミックス)" => "関係はまだLv.1",
      "食戟のソーマ L'etoile―エトワール― 3 (ジャンプコミックス)" => "食戟のソーマ L'etoile (エトワール)",
      "魔法使いの嫁 4巻" => "魔法使いの嫁",
      "魔法使いの嫁 第4巻" => "魔法使いの嫁",
      "魔法使いの嫁 通常版 4 (BLADE COMICS)" => "魔法使いの嫁",
      "魔法少女育成計画limited（前）" => "魔法少女育成計画limited",
      "ヒナまつり 11<ヒナまつり> (ビームコミックス（ハルタ）)" => "ヒナまつり",
    }.each do |book_name, expected_series_name|
      context "with #{book_name.inspect}" do
        let(:raw) do
          book_name
        end

        it { is_expected.to eq expected_series_name }
      end
    end
  end
end
