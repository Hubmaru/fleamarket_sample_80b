mens = Category.create(:name => "メンズ")
ladys = Category.create(:name => "レディース")
kids = Category.create(:name => "ベビー/キッズ")
interiors = Category.create(:name => "インテリア/住まい")
hobbies = Category.create(:name => "本/音楽/ゲーム/おもちゃ/グッズ")
beauties = Category.create(:name => "コスメ/香水/美容")
appliances = Category.create(:name => "家電/スマホ/カメラ")
sports = Category.create(:name => "スポーツ/レジャー")
handmade = Category.create(:name => "ハンドメイド")
ticketes = Category.create(:name => "チケット")
automobiles = Category.create(:name => "自動車/オートバイ")
etc = Category.create(:name => "その他")

mens_tops = mens.children.create(:name => "トップス")
mens_jakets = mens.children.create(:name => "ジャケット/アウター")
mens_bottoms = mens.children.create(:name => "パンツ")
mens_shoes = mens.children.create(:name => "靴")
mens_bags = mens.children.create(:name => "バック")
mens_suits = mens.children.create(:name => "スーツ")
mens_hats = mens.children.create(:name => "帽子")
mens_accessories = mens.children.create(:name => "アクセサリー")
mens_watches = mens.children.create(:name => "腕時計")
mens_etc = mens.children.create(:name => "その他")

ladys_tops = ladys.children.create(:name => "トップス")
ladys_jakets = ladys.children.create(:name => "ジャケット/アウター")
ladys_bottoms = ladys.children.create(:name => "パンツ")
ladys_skirts = ladys.children.create(:name => "スカート")
ladys_onePiece = ladys.children.create(:name => "ワンピース")
ladys_loungewaers = ladys.children.create(:name => "ルームウェア")
ladys_shoes = ladys.children.create(:name => "靴")
ladys_bags = ladys.children.create(:name => "バック")
ladys_suits = ladys.children.create(:name => "スーツ/ドレス")
ladys_hats = ladys.children.create(:name => "帽子")
ladys_accessories = ladys.children.create(:name => "アクセサリー／ヘアアクセサリー")
ladys_wigs = ladys.children.create(:name => "ウィッグ/エクステ")
ladys_watches = ladys.children.create(:name => "腕時計/時計")
ladys_yukata = ladys.children.create(:name => "浴衣/着物")
ladys_maternity = ladys.children.create(:name => "マタニティ")
ladys_etc = ladys.children.create(:name => "その他")

babies_clothes = kids.children.create(:name => "ベビー服")
kids_boys = kids.children.create(:name => "キッズ服男の子")
kids_girls = kids.children.create(:name => "キッズ服女の子")
babies_shoes = kids.children.create(:name => "ベビー靴")
kids_shoes = kids.children.create(:name => "キッズ靴")
kids_accessories = kids.children.create(:name => "アクセサリー/小物")
kids_toilet = kids.children.create(:name => "おむつ/トイレ")
kids_dishes = kids.children.create(:name => "食器")
kids_toies = kids.children.create(:name => "おもちゃ")
kids_outdoor = kids.children.create(:name => "外出用品")
kids_etc = kids.children.create(:name => "その他")

interiors_kitchenes = interiors.children.create(:name => "キッチン/食器")
interiors_beds = interiors.children.create(:name => "ベッド/マットレス")
interiors_sofas = interiors.children.create(:name => "ソファー")
interiors_chairs = interiors.children.create(:name => "椅子")
interiors_tables = interiors.children.create(:name => "机/テーブル")
interiors_storages = interiors.children.create(:name => "収納家具")
interiors_carpets = interiors.children.create(:name => "ラグ/マット/カーペット")
interiors_curtains = interiors.children.create(:name => "カーテン/ブラインド")
interiors_lights = interiors.children.create(:name => "照明")
interiors_bedClothes = interiors.children.create(:name => "寝具")
interiors_seasons = interiors.children.create(:name => "季節・行事")
interiors_etc = interiors.children.create(:name => "その他")

hobbies_books = hobbies.children.create(:name => "本/漫画")
hobbies_magazines = hobbies.children.create(:name => "雑誌")
hobbies_cd = hobbies.children.create(:name => "CD")
hobbies_dvd = hobbies.children.create(:name => "DVD/ブルーレイ")
hobbies_records = hobbies.children.create(:name => "レコード")
hobbies_videoGames = hobbies.children.create(:name => "TVゲーム")
hobbies_toies = hobbies.children.create(:name => "おもちゃ")
hobbies_animes = hobbies.children.create(:name => "アニメグッズ")
hobbies_cards = hobbies.children.create(:name => "トレーディングカード")
hobbies_figures = hobbies.children.create(:name => "フィギュア")
hobbies_music = hobbies.children.create(:name => "楽器/機材")
hobbies_arts = hobbies.children.create(:name => "美術品/アート用品")
hobbies_etc = hobbies.children.create(:name => "その他")

beauties_cosmetics = beauties.children.create(:name => "ベースメイク")
beauties_makeup = beauties.children.create(:name => "メイクアップ")
beauties_nails = beauties.children.create(:name => "ネイルケア")
beauties_hair = beauties.children.create(:name => "ヘアケア")
beauties_body = beauties.children.create(:name => "ボディケア")
beauties_oral = beauties.children.create(:name => "オーラルケア")
beauties_perfume = beauties.children.create(:name => "香水")
beauties_relaxation = beauties.children.create(:name => "リラクゼーション")
beauties_diet = beauties.children.create(:name => "ダイエット")
beauties_etc = beauties.children.create(:name => "その他")

appliances_smartphones = appliances.children.create(:name => "スマホ/携帯電話")
appliances_pc = appliances.children.create(:name => "PC/タブレット")
appliances_tv = appliances.children.create(:name => "TV/映像機器")
appliances_cameras = appliances.children.create(:name => "カメラ")
appliances_audios = appliances.children.create(:name => "オーディオ機器")
appliances_beauties = appliances.children.create(:name => "美容/健康")
appliances_airConditioner = appliances.children.create(:name => "エアコン/空調機")
appliances_home = appliances.children.create(:name => "生活家電")
appliances_accessories = appliances.children.create(:name => "スマホアクセサリー")
appliances_etc = appliances.children.create(:name => "その他")

sports_golfs = sports.children.create(:name => "ゴルフ")
sports_fishings = sports.children.create(:name => "釣り")
sports_basebolls = sports.children.create(:name => "野球")
sports_soccer = sports.children.create(:name => "サッカー/フットサル")
sports_tennis = sports.children.create(:name => "テニス")
sports_ski = sports.children.create(:name => "スキー/スノーボード")
sports_training = sports.children.create(:name => "トレーニング/エクササイズ")
sports_outdoor = sports.children.create(:name => "アウトドア")
sports_etc = sports.children.create(:name => "その他")

handmade_accessories = handmade.children.create(:name => "アクセサリー")
handmade_fashion = handmade.children.create(:name => "ファッション/小物")
handmade_watches = handmade.children.create(:name => "時計")
handmade_interiores = handmade.children.create(:name => "インテリア/日用品")
handmade_toies = handmade.children.create(:name => "おもちゃ")
handmade_kids = handmade.children.create(:name => "キッズ/ベビー")
handmade_materials = handmade.children.create(:name => "素材/材料")
handmade_etc = handmade.children.create(:name => "その他")

ticketes_music = ticketes.children.create(:name => "音楽")
ticketes_sports = ticketes.children.create(:name => "スポーツ")
ticketes_talents = ticketes.children.create(:name => "芸能/演劇")
ticketes_events = ticketes.children.create(:name => "イベント")
ticketes_movies = ticketes.children.create(:name => "映画")
ticketes_facilities = ticketes.children.create(:name => "施設利用券")
ticketes_complimentaries = ticketes.children.create(:name => "優待券/割引券")
ticketes_etc = ticketes.children.create(:name => "その他")

automobiles_cars = automobiles.children.create(:name => "自動車本体")
automobiles_carTire = automobiles.children.create(:name => "自動車タイヤ/ホイール")
automobiles_carParts = automobiles.children.create(:name => "自動車パーツ")
automobiles_carAccessories = automobiles.children.create(:name => "自動車アクセサリー")
automobiles_motorbike = automobiles.children.create(:name => "オートバイ本体")
automobiles_motorbikeParts = automobiles.children.create(:name => "オートバイパーツ")
automobiles_motorbikeAccessories = automobiles.children.create(:name => "オートバイアクセサリー")
automobiles_etc = automobiles.children.create(:name => "その他")

etc_sum = etc.children.create(:name => "まとめ売り")
etc_pets = etc.children.create(:name => "ペット用品")
etc_foods = etc.children.create(:name => "食品")
etc_drinks = etc.children.create(:name => "飲料/酒類")
etc_daily = etc.children.create(:name => "日用品/生活雑貨/防災")
etc_antique = etc.children.create(:name => "アンティーク/コレクション")
etc_stationery = etc.children.create(:name => "文房具/事務用品")
etc_office = etc.children.create(:name => "事務/店舗用品")
etc_etc = etc.children.create(:name => "その他")

mens_tops.children.create([{:name => "Tシャツ(半袖・袖なし)"}, {:name => "Tシャツ(七分・長袖)"}, {:name => "シャツ/ポロシャツ"},
  {:name => "タンクトップ"}, {:name => "ニット/セーター"}, {:name => "パーカー"}, {:name => "カーディガン"},
  {:name => "スウェット/トレーナー"}, {:name => "ジャージ"}, {:name => "ベスト"}, {:name => "その他"}])
mens_jakets.children.create([{:name => "テーラードジャケット"}, {:name => "レザージャケット"}, {:name => "ダウンジャケット"},
  {:name => "ライダースジャケット"}, {:name => "ミリタリージャケット"}, {:name => "フライトジャケット"}, {:name => "ダッフルコート"}, {:name => "モッズコート"},
  {:name => "Pコート"}, {:name => "トレンチコート"}, {:name => "スタジャン"}, {:name => "スカジャン"}, {:name => "ブルゾン"}, 
  {:name => "ダウンベスト"}, {:name => "その他"}])
mens_bottoms.children.create([{:name => "デニム/ジーンズ"}, {:name => "ワークパンツ/カーゴパンツ"}, {:name => "スラックス"},
  {:name => "チノパン"}, {:name => "ショートパンツ"}, {:name => "ハーフパンツ"}, {:name => "オーバーオール"}, {:name => "その他"}])
mens_shoes.children.create([{:name => "スニーカー"}, {:name => "サンダル"}, {:name => "ブーツ"},
  {:name => "ランニングシューズ"}, {:name => "トレッキングシューズ"}, {:name => "ビジネスシューズ"}, {:name => "長靴/レインシューズ"},
  {:name => "ワークシューズ"}, {:name => "その他"}])
mens_bags.children.create([{:name => "ショルダーバッグ"}, {:name => "トートバッグ"}, {:name => "ボストンバッグ"},
  {:name => "リュック/バックパック"}, {:name => "ウェストポーチ"}, {:name => "ビジネスバッグ"}, {:name => "トレッキングバッグ"},
  {:name => "スポーツバッグ"}, {:name => "キャリーケース"}, {:name => "エコバッグ"}, {:name => "その他"}])
mens_suits.children.create([{:name => "スーツジャケット"}, {:name => "スーツベスト"}, {:name => "スラックス"},
  {:name => "その他"}])
mens_hats.children.create([{:name => "キャップ"}, {:name => "ハット"}, {:name => "ニット"},
  {:name => "ハンチング"}, {:name => "ベレー帽"}, {:name => "その他"}])
mens_accessories.children.create([{:name => "ネックレス"}, {:name => "ブレスレット"}, {:name => "バングル/リストバンド"},
  {:name => "リング"}, {:name => "イアリング"}, {:name => "ピアス"}, {:name => "アンクレット"},
  {:name => "その他"}])
mens_watches.children.create([{:name => "アナログ"}, {:name => "デジタル"}, {:name => "スポーツ"},
  {:name => "アウトドア"}, {:name => "その他"}])

ladys_tops.children.create([{:name => "Tシャツ(半袖・袖なし)"}, {:name => "Tシャツ(七分・長袖)"}, {:name => "シャツ/ブラウス(半袖・袖なし)"},
  {:name => "シャツ/ブラウス(七分・長袖)"}, {:name => "ポロシャツ"}, {:name => "キャミソール"}, {:name => "タンクトップ"},
  {:name => "ニット/セーター"}, {:name => "パーカー"}, {:name => "スウェット/トレーナー"}, {:name => "チュニック"},
  {:name => "カーディガン"}, {:name => "アンサンブル"}, {:name => "パーカー"},{:name => "ジャージ"}, {:name => "ベスト"}, {:name => "その他"}])
ladys_jakets.children.create([{:name => "テーラードジャケット"}, {:name => "レザージャケット"}, {:name => "ダウンジャケット"}, {:name => "デニムジャケット"},
  {:name => "ライダースジャケット"}, {:name => "ミリタリージャケット"}, {:name => "フライトジャケット"}, {:name => "ダッフルコート"},
  {:name => "Pコート"}, {:name => "トレンチコート"}, {:name => "ロングコート"}, {:name => "モッズコート"}, {:name => "スタジャン"}, {:name => "スカジャン"},
  {:name => "ブルゾン"}, {:name => "ダウンベスト"}, {:name => "その他"}])
ladys_bottoms.children.create([{:name => "デニム/ジーンズ"}, {:name => "ワークパンツ/カーゴパンツ"}, {:name => "スラックス"},
  {:name => "チノパン"}, {:name => "ショートパンツ"}, {:name => "ハーフパンツ"}, {:name => "クロップドパンツ"}, {:name => "オーバーオール"},
  {:name => "オールインワン"}, {:name => "サルエルパンツ"}, {:name => "ガウチョパンツ"}, {:name => "その他"}])
ladys_skirts.children.create([{:name => "ミニスカート"}, {:name => "ロングスカート"}, {:name => "ひざ丈スカート"},
  {:name => "キュロット"}, {:name => "その他"}])
ladys_onePiece.children.create([{:name => "ミニワンピース"}, {:name => "ロングワンピース"}, {:name => "ひざ丈ワンピース"},
  {:name => "その他"}])
ladys_loungewaers.children.create([{:name => "ルームウェア"}, {:name => "パジャマ"}, {:name => "その他"}])
ladys_shoes.children.create([{:name => "スニーカー"}, {:name => "サンダル"}, {:name => "ブーツ"},
  {:name => "ハイヒール"}, {:name => "パンプス"}, {:name => "ミュール"}, {:name => "モカシン"}, {:name => "革靴"},
  {:name => "長靴/レインシューズ"}, {:name => "トレッキングシューズ"}, {:name => "その他"}])
ladys_bags.children.create([{:name => "ショルダーバッグ"}, {:name => "トートバッグ"}, {:name => "ボストンバッグ"},
  {:name => "リュック/バックパック"}, {:name => "ウェストポーチ"}, {:name => "ビジネスバッグ"}, {:name => "トレッキングバッグ"},
  {:name => "スポーツバッグ"}, {:name => "クラッチバッグ"}, {:name => "キャリーケース"}, {:name => "マザーズバッグ"},
  {:name => "ポーチ/バニティ"}, {:name => "エコバッグ"}, {:name => "その他"}])
ladys_suits.children.create([{:name => "スカートスーツ上下"}, {:name => "パンツスーツ上下"}, {:name => "ドレス"},
  {:name => "ウエディング"}, {:name => "その他"}])
ladys_hats.children.create([{:name => "キャップ"}, {:name => "ハット"}, {:name => "ニット"},
  {:name => "ハンチング"}, {:name => "ベレー帽"}, {:name => "その他"}])
ladys_accessories.children.create([{:name => "ネックレス"}, {:name => "ブレスレット"}, {:name => "バングル/リストバンド"},
  {:name => "リング"}, {:name => "イアリング"}, {:name => "ピアス"}, {:name => "アンクレット"},
  {:name => "ブローチ/コサージュ"}, {:name => "チャーム"},{:name => "その他"}])
ladys_wigs.children.create([{:name => "前髪ウィッグ"}, {:name => "ロングストレート"}, {:name => "ロングカール"},
  {:name => "ショートストレート"}, {:name => "ショートカール"},{:name => "その他"}])
ladys_watches.children.create([{:name => "アナログ"}, {:name => "デジタル"}, {:name => "スポーツ"},
  {:name => "アウトドア"}, {:name => "その他"}])
ladys_yukata.children.create([{:name => "浴衣"}, {:name => "着物"}, {:name => "振袖"},
  {:name => "その他"}])
ladys_maternity.children.create([{:name => "トップ"}, {:name => "アウター"}, {:name => "インナー"},
  {:name => "ワンピース"}, {:name => "パンツ"}, {:name => "スカート"}, {:name => "パジャマ"},
  {:name => "授乳服"}, {:name => "その他"}])

babies_clothes.children.create([{:name => "Tシャツ/シャツ"}, {:name => "ワンピース"}, {:name => "タンクトップ/キャミソール"},
  {:name => "トレーナー"}, {:name => "パーカー"}, {:name => "ジャケット/コート"}, {:name => "ニット/セーター"},
  {:name => "ロンパース"}, {:name => "カバーオール"}, {:name => "パンツ"}, {:name => "スカート"},
  {:name => "パジャマ"}, {:name => "バスローブ"}, {:name => "甚平/浴衣"}, {:name => "和服/着物"},
  {:name => "水着"}, {:name => "その他"}])
kids_boys.children.create([{:name => "Tシャツ"}, {:name => "シャツ/ブラウス"}, {:name => "カーディガン"}, {:name => "タンクトップ"},
  {:name => "トレーナー"}, {:name => "パーカー"}, {:name => "ジャケット/コート"}, {:name => "ニット/セーター"},
  {:name => "パンツ"},{:name => "パジャマ"}, {:name => "フォーマル/ドレス"},{:name => "甚平/浴衣"}, {:name => "和服/着物"},
  {:name => "水着"}, {:name => "その他"}])
kids_girls.children.create([{:name => "Tシャツ"}, {:name => "シャツ/ブラウス"}, {:name => "カーディガン"}, {:name => "キャミソール"},
  {:name => "トレーナー"}, {:name => "パーカー"}, {:name => "ジャケット/コート"}, {:name => "ニット/セーター"},
  {:name => "パンツ/スカート"},{:name => "パジャマ"}, {:name => "フォーマル/ドレス"},
  {:name => "甚平/浴衣"}, {:name => "和服/着物"},{:name => "水着"}, {:name => "その他"}])
babies_shoes.children.create([{:name => "スニーカー"}, {:name => "サンダル"}, {:name => "ブーツ"},
  {:name => "ハイヒール"}, {:name => "パンプス"}, {:name => "革靴"}, {:name => "長靴/レインシューズ"}, 
  {:name => "トレッキングシューズ"}, {:name => "その他"}])
kids_shoes.children.create([{:name => "スニーカー"}, {:name => "サンダル"}, {:name => "ブーツ"},
  {:name => "ハイヒール"}, {:name => "パンプス"}, {:name => "革靴"}, {:name => "長靴/レインシューズ"}, 
  {:name => "トレッキングシューズ"}, {:name => "その他"}])
kids_accessories.children.create([{:name => "靴下/タイツ"}, {:name => "マフラー"}, {:name => "帽子"},
  {:name => "ハンカチ"}, {:name => "バッグ"}, {:name => "手袋"}, {:name => "ベルト"}, 
  {:name => "傘"}, {:name => "ブレスレット/リストバンド"}, {:name => "ネックレス"}, {:name => "イアリング/ビアス"},
  {:name => "リング"}, {:name => "アンクレット"}, {:name => "ヘアバンド"}, {:name => "その他"}])
kids_toilet.children.create([{:name => "おむつ"}, {:name => "おまる/補助便座"}, {:name => "トレーニングパンツ"},
  {:name => "ベビーバス"}, {:name => "お風呂グッズ"}, {:name => "その他"}])
kids_dishes.children.create([{:name => "ベビー食器"}, {:name => "その他"}])
kids_toies.children.create([{:name => "お風呂おもちゃ"}, {:name => "ガラガラ"}, {:name => "オルゴール"},
  {:name => "ベビージム"}, {:name => "手押し車"}, {:name => "知育玩具"}, {:name => "その他"}])
kids_outdoor.children.create([{:name => "ベビーカー"}, {:name => "だっこひも"}, {:name => "チャイルドシート"},
  {:name => "その他"}])

interiors_kitchenes.children.create([{:name => "食器"}, {:name => "調理器具"}, {:name => "カトラリー(箸/スプーン等)"},
  {:name => "容器"}, {:name => "弁当用品"}, {:name => "テーブル用品"}, {:name => "エプロン"},
  {:name => "浄水器"}, {:name => "シンク用品"}, {:name => "その他"}])
interiors_beds.children.create([{:name => "セミシングルベッド"}, {:name => "シングルベッド"}, {:name => "セミダブルベッド"},
  {:name => "ダブルベッド"}, {:name => "クイーンベッド"}, {:name => "キングベッド"}, {:name => "脚付きマットレス"},
  {:name => "マットレス"}, {:name => "システムベッド"}, {:name => "折畳みベッド"}, {:name => "収納つきベッド"}, 
  {:name => "その他"}])
interiors_sofas.children.create([{:name => "ソファセット"}, {:name => "一人がけソファ"}, {:name => "二人がけソファ"},
  {:name => "三人がけソファ"}, {:name => "オットマン"}, {:name => "コーナーソファ"}, {:name => "ソファベッド"},
  {:name => "ソファカバー"}, {:name => "リクライニング"}, {:name => "その他"}])
interiors_chairs.children.create([{:name => "スツール"}, {:name => "ダイニングチェア"}, {:name => "ハイバックチェア"},
  {:name => "ロッキングチェア"}, {:name => "座椅子"}, {:name => "折畳み椅子"}, {:name => "デスクチェア"}, {:name => "その他"}])
interiors_tables.children.create([{:name => "こたつ"}, {:name => "カウンターテーブル"}, {:name => "サイドテーブル"},
  {:name => "センターテーブル"}, {:name => "ダイニングテーブル"}, {:name => "ちゃぶ台"}, {:name => "学習机/事務机"},
  {:name => "アウトドア用"}, {:name => "パソコン用"}, {:name => "その他"}])
interiors_storages.children.create([{:name => "リビング収納"}, {:name => "キッチン収納"}, {:name => "玄関/屋外収納"},
  {:name => "バス/トイレ収納"}, {:name => "本収納"}, {:name => "CD/DVD収納"}, {:name => "タンス/押入れ収納"},
  {:name => "電話台"}, {:name => "ドレッサー/鏡台"}, {:name => "棚/ラック"}, {:name => "ケース/ボックス"}, 
  {:name => "その他"}])
interiors_carpets.children.create([{:name => "ラグ"}, {:name => "カーペット"}, {:name => "ホットカーペット"},
  {:name => "玄関マット"}, {:name => "キッチンマット"}, {:name => "トイレマット"}, {:name => "バスマット"},
  {:name => "その他"}])
interiors_curtains.children.create([{:name => "カーテン"}, {:name => "ブラインド"}, {:name => "ロールスクリーン"},
  {:name => "のれん"}, {:name => "その他"}])
interiors_lights.children.create([{:name => "蛍光灯/電球"}, {:name => "天井照明"}, {:name => "フロアスタンド"},
  {:name => "その他"}])
interiors_bedClothes.children.create([{:name => "布団/毛布"}, {:name => "枕"}, {:name => "シーツカバー"},
  {:name => "その他"}])
interiors_seasons.children.create([{:name => "正月"}, {:name => "成人式"}, {:name => "バレンタインデー"},
  {:name => "ひな祭り"}, {:name => "こどもの日"}, {:name => "母の日"}, {:name => "父の日"},
  {:name => "サマーギフト/お中元"}, {:name => "夏/夏休み"}, {:name => "ハロウィン"}, {:name => "敬老の日"}, 
  {:name => "七五三"}, {:name => "お歳暮"}, {:name => "クリスマス"}, {:name => "冬/冬休み"},
  {:name => "その他"}])

hobbies_books.children.create([{:name => "文学/小説"}, {:name => "人文/社会"}, {:name => "ノンフィクション/教養"},
  {:name => "地図/旅行ガイド"}, {:name => "ビジネス/経済"}, {:name => "健康/医学"}, {:name => "コンピュータ/IT"},
  {:name => "趣味/スポーツ/実用"}, {:name => "住まい/暮らし/子育て"}, {:name => "アート/エンタメ"}, {:name => "洋書"}, 
  {:name => "絵本"}, {:name => "参考書"}, {:name => "全巻セット(漫画)"}, {:name => "少女漫画"}, 
  {:name => "少年漫画"}, {:name => "青年漫画"}, {:name => "女性漫画"}, {:name => "同人誌"}, 
  {:name => "その他"}])
hobbies_magazines.children.create([{:name => "アート/エンタメ/ホビー"}, {:name => "フッション"}, {:name => "ニュース・総合"},
  {:name => "趣味/スポーツ"}, {:name => "その他"}])
hobbies_cd.children.create([{:name => "邦楽"}, {:name => "洋楽"}, {:name => "アニメ"},
  {:name => "クラシック"}, {:name => "K-POP"}, {:name => "キッズ/ファミリー"}, {:name => "その他"}])
hobbies_dvd.children.create([{:name => "洋画"}, {:name => "邦画"}, {:name => "アニメ"},
  {:name => "TVドラマ"}, {:name => "ミュージック"}, {:name => "お笑い/バラエティ"}, {:name => "スポーツ/フィットネス"},
  {:name => "キッズ/ファミリー"}, {:name => "その他"}])
hobbies_records.children.create([{:name => "邦楽"}, {:name => "洋楽"}, {:name => "その他"}])
hobbies_videoGames.children.create([{:name => "家庭用ゲーム本体"}, {:name => "家庭用ゲームソフト"}, {:name => "携帯用ゲーム本体"},
  {:name => "携帯用ゲームソフト"}, {:name => "PCゲーム"}, {:name => "その他"}])
hobbies_toies.children.create([{:name => "キャラクターグッズ"}, {:name => "ぬいぐるみ"}, {:name => "模型/プラモデル"},
  {:name => "ミニカー"}, {:name => "ラジコン"}, {:name => "トイガン"}, {:name => "ドローン"}, {:name => "その他"}])
hobbies_animes.children.create([{:name => "ストラップ"}, {:name => "キーホルダー"}, {:name => "バッジ"},
  {:name => "カード"}, {:name => "クリアファイル"}, {:name => "ポスター"}, {:name => "タオル"},
  {:name => "その他"}])
hobbies_cards.children.create([{:name => "遊戯王"}, {:name => "マジック・ザ・ギャザリング"}, {:name => "ポケモン"},
  {:name => "デュエルマスターズ"}, {:name => "バトルスピリッツ"}, {:name => "プリパラ"}, {:name => "アイカツ"},
  {:name => "カードファイト!!ヴァンガード"}, {:name => "ヴァイスシュヴァルツ"}, {:name => "プロ野球オーナーズリーグ"}, {:name => "洋書"}, 
  {:name => "ベースボールヒーローズ"}, {:name => "ドラゴンボール"}, {:name => "スリーブ"},
  {:name => "その他"}])
hobbies_figures.children.create([{:name => "コミック/アニメ"}, {:name => "特撮"}, {:name => "ゲームキャラクター"},
  {:name => "SF/ファンタジー/ホラー"}, {:name => "アメコミ"}, {:name => "ミリタリー"}, {:name => "スポーツ"},
  {:name => "その他"}])
hobbies_music.children.create([{:name => "エレキギター"}, {:name => "アコースティックギター"}, {:name => "ベース"},
  {:name => "エフェクター"}, {:name => "アンプ"}, {:name => "弦楽器"}, {:name => "管楽器"},
  {:name => "鍵盤楽器"}, {:name => "打楽器"}, {:name => "和楽器"}, {:name => "楽譜・スコア"}, 
  {:name => "レコーディング/PA機器"}, {:name => "DJ機器"}, {:name => "DTM/DAW"},
  {:name => "その他"}])
hobbies_arts.children.create([{:name => "陶芸"}, {:name => "ガラス"}, {:name => "漆芸"},
  {:name => "金属工芸"}, {:name => "絵画/タペストリー"}, {:name => "版画"}, {:name => "彫刻/オブジェクト"},
  {:name => "書/掛け軸"}, {:name => "写真"}, {:name => "武具"}, {:name => "切手/ハガキ"}, 
  {:name => "旧貨幣/記念硬貨"}, {:name => "金貨/銀貨"}, {:name => "ノベルティ"},
  {:name => "画材"}, {:name => "額縁"}, {:name => "その他"}])

beauties_cosmetics.children.create([{:name => "化粧下地"}, {:name => "ファンデーション"}, {:name => "コントロールカラー"},
  {:name => "BBクリーム"}, {:name => "CCクリーム"}, {:name => "コンシーラー"}, {:name => "フェイスパウダー"},
  {:name => "トライアルセット/サンプル"}, {:name => "その他"}])
beauties_makeup.children.create([{:name => "アイシャドー"}, {:name => "口紅"}, {:name => "リップグロス"},
  {:name => "リップライナー"}, {:name => "チーク"}, {:name => "フェイスカラー"}, {:name => "マスカラ"},
  {:name => "アイライナー"}, {:name => "つけまつげ"}, {:name => "アイブロウペンシル"},
  {:name => "パウダーアイブロウ"}, {:name => "眉マスカラ"}, {:name => "トライアルセット/サンプル"},
  {:name => "メイク道具/化粧小物"}, {:name => "美顔用品/美顔ローラー"}, {:name => "その他"}])
beauties_nails.children.create([{:name => "ネイルカラー"}, {:name => "カラージェル"}, {:name => "ネイルベースコート/トップコート"},
  {:name => "ネイルアート用品"}, {:name => "ネイルパーツ"}, {:name => "ネイルチップ/つけ爪"}, {:name => "手入れ用具"},
  {:name => "除光液"}, {:name => "その他"}])
beauties_hair.children.create([{:name => "シャンプー"}, {:name => "トリートメント"}, {:name => "コンディショナー"},
  {:name => "リンス"}, {:name => "スタイリング剤"}, {:name => "カラーリング剤"}, {:name => "ブラシ"},
  {:name => "その他"}])
beauties_body.children.create([{:name => "オイル/クリーム"}, {:name => "ハンドクリーム"}, {:name => "ローション"},
  {:name => "日焼け止め/サンオイル"}, {:name => "ボディソープ"}, {:name => "入浴剤"}, {:name => "制汗/デオドラント"},
  {:name => "フットケア"}, {:name => "その他"}])
beauties_oral.children.create([{:name => "口臭防止/エチケット用品"}, {:name => "歯ブラシ"}, {:name => "歯磨き粉"},
  {:name => "マウスウォッシュ"}, {:name => "その他"}])
beauties_perfume.children.create([{:name => "男性用"}, {:name => "女性用"}, {:name => "ユニセックス"},
  {:name => "ボディミスト"}, {:name => "その他"}])
beauties_relaxation.children.create([{:name => "エッセンシャルオイル"}, {:name => "芳香器"}, {:name => "お香/香炉"},
  {:name => "キャンドル"}, {:name => "リラクゼーショングッズ"}, {:name => "その他"}])
beauties_diet.children.create([{:name => "ダイエット食品"}, {:name => "エクササイズ用品"}, {:name => "体重計"},
  {:name => "体脂肪計"}, {:name => "その他"}])

appliances_smartphones.children.create([{:name => "スマホ本体"}, {:name => "携帯電話本体"}, {:name => "バッテリー/充電器"},
  {:name => "PHS本体"}, {:name => "その他"}])
appliances_pc.children.create([{:name => "ノートPC"}, {:name => "デスクトップPC"}, {:name => "ディスプレイ"},
  {:name => "タブレット"}, {:name => "電子ブックリーダー"}, {:name => "PC周辺機器"}, {:name => "PCパーツ"},
  {:name => "その他"}])
appliances_tv.children.create([{:name => "テレビ"}, {:name => "プロジェクター"}, {:name => "ブルーレイレコーダー"},
  {:name => "DVDレコーダー"}, {:name => "ブルーレイプレーヤー"}, {:name => "DVDプレーヤー"}, {:name => "映像用ケーブル"},
  {:name => "その他"}])
appliances_cameras.children.create([{:name => "デジタルカメラ"}, {:name => "ビデオカメラ"}, {:name => "レンズ(単焦点)"},
  {:name => "レンズ(ズーム)"}, {:name => "フィルムカメラ"}, {:name => "D防犯カメラ"},
  {:name => "その他"}])
appliances_audios.children.create([{:name => "ポータブルプレーヤー"}, {:name => "イヤホン"}, {:name => "ヘッドホン"},
  {:name => "アンプ"}, {:name => "スピーカー"}, {:name => "ケーブル/シールド"}, {:name => "ラジオ"},
  {:name => "その他"}])
appliances_beauties.children.create([{:name => "ヘアドライヤー"}, {:name => "ヘアアイロン"}, {:name => "美容機器"},
  {:name => "電気シェーバー"}, {:name => "電動歯ブラシ"}, {:name => "その他"}])
appliances_airConditioner.children.create([{:name => "エアコン"}, {:name => "空気清浄機"}, {:name => "加湿器"},
  {:name => "扇風機"}, {:name => "除湿機"}, {:name => "ファンヒーター"}, {:name => "電気ヒーター"},{:name => "オイルヒーター"}, 
  {:name => "ストーブ"}, {:name => "ホットカーペット"}, {:name => "こたつ"}, {:name => "電気毛布"}, 
  {:name => "その他"}])
appliances_home.children.create([{:name => "冷蔵庫"}, {:name => "洗濯機"}, {:name => "炊飯器"},
  {:name => "電子レンジ/オーブン"}, {:name => "調理器具"}, {:name => "アイロン"}, {:name => "掃除機"},
  {:name => "コーヒーメーカー"}, {:name => "衣類乾燥機"}, {:name => "その他"}])
appliances_accessories.children.create([{:name => "Android用ケース"}, {:name => "iPhone用ケース"}, {:name => "カバー"},
  {:name => "イヤホンジャック"}, {:name => "ストラップ"}, {:name => "フィルム"}, {:name => "自撮り棒"},
  {:name => "その他"}])

sports_golfs.children.create([{:name => "クラブ"}, {:name => "ウエア(男性)"}, {:name => "ウエア(女性)"},
  {:name => "バッグ"}, {:name => "シューズ(男性)"}, {:name => "シューズ(女性)"}, {:name => "アクセサリー"},
  {:name => "衣類乾燥機"}, {:name => "その他"}])
sports_fishings.children.create([{:name => "ロッド"}, {:name => "リール"}, {:name => "ルアー"},
  {:name => "ウエア"}, {:name => "釣り糸/ライン"}, {:name => "その他"}])
sports_basebolls.children.create([{:name => "ウエア"}, {:name => "シューズ"}, {:name => "グローブ"},
  {:name => "バット"}, {:name => "防具"}, {:name => "アクセサリー"}, {:name => "練習機器"},
  {:name => "記念グッズ"}, {:name => "応援グッズ"}, {:name => "その他"}])
sports_soccer.children.create([{:name => "ウエア"}, {:name => "シューズ"}, {:name => "ボール"},
  {:name => "アクセサリー"}, {:name => "記念グッズ"}, {:name => "応援グッズ"},
  {:name => "その他"}])
sports_tennis.children.create([{:name => "ウエア"}, {:name => "シューズ"}, {:name => "ボール"},
  {:name => "ラケット(硬式)"}, {:name => "ラケット(軟式)"}, {:name => "アクセサリー"},
  {:name => "記念グッズ"}, {:name => "応援グッズ"}, {:name => "その他"}])
sports_ski.children.create([{:name => "板/ボード"}, {:name => "ストック"}, {:name => "ビンディング"},
  {:name => "バインディング"}, {:name => "ブーツ(子供)"}, {:name => "ブーツ(男性)"}, {:name => "ブーツ(女性)"},
  {:name => "ウエア(子供)"}, {:name => "ウエア(男性)"}, {:name => "ウエア(女性)"}, {:name => "バッグ"},
  {:name => "アクセサリー"}, {:name => "その他"}])
sports_training.children.create([{:name => "ランニング"}, {:name => "ウォーキング"}, {:name => "マラソン"},
  {:name => "ヨガ"}, {:name => "トレーニング用品"}, {:name => "その他"}])
sports_outdoor.children.create([{:name => "テント/タープ"}, {:name => "ライト/ランタン"}, {:name => "寝袋/寝具"},
  {:name => "テーブル/チェア"}, {:name => "ストーブ/コンロ"}, {:name => "調理器具"}, {:name => "食器"},
  {:name => "登山用品"}, {:name => "その他"}])

handmade_accessories.children.create([{:name => "ピアス"}, {:name => "イヤリング"}, {:name => "ネックレス"},
  {:name => "ブレスレット"}, {:name => "リング"}, {:name => "チャーム"}, {:name => "ヘアゴム"},
  {:name => "アンクレット"}, {:name => "その他"}])
handmade_fashion.children.create([{:name => "バッグ(男性)"}, {:name => "バッグ(女性)"}, {:name => "財布(男性)"},
  {:name => "財布(女性)"}, {:name => "雑貨"},
  {:name => "その他"}])
handmade_watches.children.create([{:name => "時計(男性)"}, {:name => "時計(女性)"},
  {:name => "その他"}])
handmade_interiores.children.create([{:name => "キッチン用品"}, {:name => "家具"}, {:name => "文房具"},
  {:name => "アート/写真"}, {:name => "アロマ/キャンドル"}, {:name => "フラワーガーデン"},
  {:name => "その他"}])
handmade_kids.children.create([{:name => "雑貨"}, {:name => "スタイ/よだれかけ"}, {:name => "外出用品"},
  {:name => "ネームタグ"}, {:name => "その他"}])
handmade_materials.children.create([{:name => "各種パーツ"}, {:name => "生地/糸"}, {:name => "型紙/パターン"},
  {:name => "その他"}])

ticketes_music.children.create([{:name => "男性アイドル"}, {:name => "女性アイドル"}, {:name => "国内アーティスト"},
  {:name => "海外アーティスト"}, {:name => "韓流"}, {:name => "音楽フェス"}, {:name => "声優/アニメ"},
  {:name => "その他"}])
ticketes_sports.children.create([{:name => "野球"}, {:name => "サッカー"}, {:name => "テニス"},
  {:name => "バスケットボール"}, {:name => "バレーボール"}, {:name => "ゴルフ"}, {:name => "格闘技/プロレス"},
  {:name => "相撲/武道"}, {:name => "ウィンタースポーツ"}, {:name => "モータースポーツ"},
  {:name => "その他"}])
ticketes_talents.children.create([{:name => "ミュージカル"}, {:name => "演劇"}, {:name => "伝統芸能"},
  {:name => "落語"}, {:name => "お笑い"}, {:name => "オペラ"}, {:name => "サーカス"},
  {:name => "バレエ"}, {:name => "その他"}])
ticketes_events.children.create([{:name => "キッズ/ファミリー"}, {:name => "トークショー/講演会"}, {:name => "声優/アニメ"},
  {:name => "その他"}])
ticketes_movies.children.create([{:name => "邦画"}, {:name => "洋画"},
  {:name => "その他"}])
ticketes_facilities.children.create([{:name => "遊園地/テーマパーク"}, {:name => "美術館/博物館"}, {:name => "スキー場"},
  {:name => "ゴルフ場"}, {:name => "フィットネスクラブ"}, {:name => "プール"}, {:name => "ボウリング場"},
  {:name => "水族館"}, {:name => "動物園"}, {:name => "その他"}])
ticketes_complimentaries.children.create([{:name => "ショッピング"}, {:name => "レストラン/食事券"}, {:name => "フード/ドリンク券"},
  {:name => "宿泊券"}, {:name => "その他"}])

automobiles_cars.children.create([{:name => "国内自動車本体"}, {:name => "外国自動車本体"},
  {:name => "その他"}])
automobiles_carTire.children.create([{:name => "タイヤ・ホイールセット"}, {:name => "タイヤ"}, {:name => "ホイール"},
  {:name => "その他"}])
automobiles_carParts.children.create([{:name => "サスペンション"}, {:name => "ブレーキ"}, {:name => "外装/エアロパーツ"},
  {:name => "ライト"}, {:name => "内装/シート"}, {:name => "ステアリング"}, {:name => "マフラー/排気系"},
  {:name => "エンジン/冷却装置/過給機"}, {:name => "クラッチ/ミッション/駆動系"}, {:name => "電装品"},
  {:name => "補強パーツ"}, {:name => "汎用パーツ"}, {:name => "外国自動車用パーツ"},
  {:name => "その他"}])
automobiles_carAccessories.children.create([{:name => "車内アクセサリー"}, {:name => "カーナビ"}, {:name => "カーオーディオ"},
  {:name => "車外アクセサリー"}, {:name => "メンテナンス用品"}, {:name => "チャイルドシート"}, {:name => "ドライブレコーダー"},
  {:name => "エンジン/冷却装置/過給機"}, {:name => "クラッチ/ミッション/駆動系"}, {:name => "電装品"},
  {:name => "レーダー探知機"}, {:name => "カタログ/マニュアル"}, {:name => "セキュリティー"},
  {:name => "ETC"}, {:name => "その他"}])
automobiles_motorbike.children.create([{:name => "国内オートバイ本体"}, {:name => "外国オートバイ本体"},
  {:name => "その他"}])
automobiles_motorbikeParts.children.create([{:name => "サスペンション"}, {:name => "ブレーキ"}, {:name => "タイヤ"},
  {:name => "ホイール"}, {:name => "ライト"}, {:name => "ミラー"}, {:name => "カウル/フェンダー/外装"}, {:name => "マフラー/排気系"},
  {:name => "エンジン/冷却装置"}, {:name => "チェーン/スプロケット/駆動系"}, {:name => "電装系"}, {:name => "メーター"},
  {:name => "タンク"}, {:name => "シート"}, {:name => "外国オートバイ用パーツ"},
  {:name => "その他"}])
automobiles_motorbikeAccessories.children.create([{:name => "ヘルメット/シールド"}, {:name => "バイクウェア/装備"}, {:name => "アクセサリー"},
  {:name => "メンテナンス"}, {:name => "カタログ/マニュアル"},
  {:name => "その他"}])

etc_pets.children.create([{:name => "ペットフード"}, {:name => "犬用品"}, {:name => "猫用品"},
  {:name => "鳥用品"}, {:name => "小動物用品"}, {:name => "魚用品"}, {:name => "爬虫類/両生類用品"}, {:name => "虫類用品"},
  {:name => "かご/おり"}, {:name => "その他"}])
etc_foods.children.create([{:name => "菓子"}, {:name => "米"}, {:name => "野菜"},
  {:name => "果物"}, {:name => "調味料"}, {:name => "魚介類(加工食品)"}, {:name => "肉類(加工食品)"},
  {:name => "その他(加工食品)"}, {:name => "その他"}])
etc_drinks.children.create([{:name => "コーヒー"}, {:name => "茶"}, {:name => "ソフトドリンク"},
  {:name => "ミネラルウォーター"}, {:name => "ビール/発泡酒"}, {:name => "ワイン"}, {:name => "ブランデー"}, {:name => "ウイスキー"},
  {:name => "バーボン"},  {:name => "日本酒"}, {:name => "焼酎"}, {:name => "泡盛"},
  {:name => "その他"}])
etc_daily.children.create([{:name => "タオル/バス用品"}, {:name => "日用品/生活雑貨"}, {:name => "洗剤/柔軟剤"},
  {:name => "旅行用品"}, {:name => "防災関連グッズ"},{:name => "その他"}])
etc_antique.children.create([{:name => "雑貨"}, {:name => "工芸品"}, {:name => "家具"},
  {:name => "印刷物"}, {:name => "その他"}])
etc_stationery.children.create([{:name => "筆記具"}, {:name => "ノート/メモ帳"}, {:name => "テープ/マスキングテープ"},
  {:name => "カレンダー/スケジュール"}, {:name => "アルバム/スクラップ"}, {:name => "ファイル/バインダー"}, {:name => "はさみ/カッター"},
  {:name => "カードホルダー/名刺管理"}, {:name => "のり/ホッチキス"},
  {:name => "その他"}])
etc_office.children.create([{:name => "オフィス用品一般"}, {:name => "オフィス家具"}, {:name => "店舗用品"},
  {:name => "OA機器"}, {:name => "ラッピング/包装"}, {:name => "その他"}])