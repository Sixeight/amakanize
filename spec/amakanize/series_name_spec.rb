RSpec.describe Amakanize::SeriesName do
  let(:series_name) do
    described_class.new(raw)
  end

  describe "#to_s" do
    subject do
      series_name.to_s
    end

    {
      "D.Gray-man 25 (ジャンプコミックス)" => "D.Gray-man",
      "D.Gray‐man (4) (ジャンプ・コミックス)" => "D.Gray-man",
      "D.Grayーman 10 (ジャンプコミックス)" => "D.Gray-man",
      "Hero and Daughter　Lv1からはじめる勇者奪還作戦 (角川スニーカー文庫)" => "Hero and Daughter Lv1からはじめる勇者奪還作戦",
      "IS〈インフィニット・ストラトス〉 1 (オーバーラップ文庫)" => "IS<インフィニット・ストラトス>",
      "IS<インフィニット・ストラトス>9 (オーバーラップ文庫)" => "IS<インフィニット・ストラトス>",
      "JavaScript 第6版" => "JavaScript",
      "To LOVEる -とらぶる- ダークネス" => "To LOVEる",
      "To LOVEる -とらぶる-" => "To LOVEる",
      "アド・アストラ 1 ─スキピオとハンニバル─ (ヤングジャンプコミックス・ウルトラ)" => "アド・アストラ",
      "アド・アストラ 2―スキピオとハンニバル (ヤングジャンプコミックス・ウルトラ)" => "アド・アストラ",
      "アニウッド大通り　１: アニメ監督一家物語" => "アニウッド大通り",
      "なれる!SE 2週間でわかる?SE入門 (電撃文庫)" => "なれる!SE 2週間でわかる?SE入門",
      "ネトゲの嫁は女の子じゃないと思った? Lv.2 (電撃文庫)" => "ネトゲの嫁は女の子じゃないと思った?",
      "ばくおん! ! (7)(ヤングチャンピオン烈コミックス)" => "ばくおん!!",
      "バグゲーブレイカー! 2 ~Lv99だけどまだ本気出してない~ (オーバーラップ文庫)" => "バグゲーブレイカー!",
      "パパLv.1 ２" => "パパLv.1",
      "パパＬｖ１" => "パパ",
      "やはり俺の青春ラブコメはまちがっている。4" => "やはり俺の青春ラブコメはまちがっている。",
      "ヤマノススメ volume 3 (アース・スターコミックス)" => "ヤマノススメ",
      "ラブライブ! School idol diary ~星空凛~" => "ラブライブ! School idol diary",
      "僕だけがいない街 (1) (カドカワコミックス・エース)" => "僕だけがいない街",
      "冴えない彼女の育てかた (9)" => "冴えない彼女の育てかた",
      "刀語 第十一話 毒刀・鍍 (ドクトウ・メッキ) (講談社BOX)" => "刀語",
      "東京レイヴンズEX1party in nest" => "東京レイヴンズEX1party in nest",
      "白騎士物語-episode.0-ドグマ戦記" => "白騎士物語",
      "神さまのいない日曜日VII (富士見ファンタジア文庫)" => "神さまのいない日曜日",
      "聖剣使いの禁呪詠唱〈ワールドブレイク〉 (GA文庫)" => "聖剣使いの禁呪詠唱<ワールドブレイク>",
      "聖剣使いの禁呪詠唱《ワールドブレイク》10 (GA文庫)" => "聖剣使いの禁呪詠唱<ワールドブレイク>",
      "聖剣使いの禁呪詠唱<ワールドブレイク> 4 (GA文庫)" => "聖剣使いの禁呪詠唱<ワールドブレイク>",
      "艦隊これくしょん -艦これ- 島風 つむじ風の少女" => "艦隊これくしょん",
      "達人伝 -9万里を風に乗り-(3) (アクションコミックス)" => "達人伝",
      "関係はまだLv.1 (drapコミックス)" => "関係はまだ",
      "魔法使いの嫁 4巻" => "魔法使いの嫁",
      "魔法使いの嫁 第4巻" => "魔法使いの嫁",
      "魔法使いの嫁 通常版 4 (BLADE COMICS)" => "魔法使いの嫁",
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
