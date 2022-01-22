#あっちむいて
def achimuite(hantei)
    @hantei = hantei
    
    puts "あっちむいて〜"
    achimuites = ["上▲","下▼","左◀︎","右▶︎"]
    puts "[上▲]→1 \n[下▼]→2 \n[左◀]→3 \n[右▶︎]→4"
    my_arrow = gets.to_i #1~4
    com_arrow = rand(4) #0~3
    
    if my_arrow == 1 || my_arrow == 2 || my_arrow == 3 || my_arrow == 4
        puts ""
        puts "ホイ★"
        puts "---------------------"
        puts "わたしは【#{achimuites[my_arrow - 1]}】を出しました" #0~3
        puts "相手は【#{achimuites[com_arrow]}】を出しました" #0~3
        puts "---------------------"
        puts ""
      
        if my_arrow == com_arrow + 1
            puts "『アナタの#{@hantei}』"
            puts ""
        else
            janken("もう1回！じゃんけん...","ポン！")
        end
    else
        puts "\n※※※※選択エラー※※※※\n※※※※半角1~4以外の数字が選択されました※※※※\n※※※※最初からやり直してください※※※※\n "
        janken("じゃんけん...","ポン！")
    end    
end


#じゃんけん
def janken(turn,kiai)
    @turn = turn
    @kiai = kiai
    
    puts "#{@turn}\n "
    jankens = ["グー","チョキ","パー"]
    puts "[グー]→1 \n[チョキ]→2 \n[パー]→3 \n[ゲームをやめる]→4"
    my_hand = gets.to_i #1~3
    com_hand = rand(3) #0~2
    
    if my_hand == 4
        puts "お疲れ様でした^^！"
        exit
    elsif my_hand == 1 || my_hand == 2 || my_hand == 3
        puts " \n#{@kiai}★"
        puts "---------------------"
        puts "アナタは【#{jankens[my_hand - 1]}】を出しました" #0~2
        puts "相手は【#{jankens[com_hand]}】を出しました" #0~2
        puts "---------------------\n "

        if my_hand == com_hand + 1
            janken("あいこで...","ショ！")
        elsif my_hand == 1 && com_hand + 1 == 2 || my_hand == 2 && com_hand + 1 == 3 || my_hand == 3 && com_hand + 1 == 1
            puts "『リーチ(ﾟ∀ﾟ)！』 \n "
            achimuite("勝ちです＼(^o^)／")
            puts ""
            question
        else
            puts "『ヤバイ！(・Д・; 』 \n "
            achimuite("負けです。。。orz")
            puts ""
            question
        end
    else
        puts "\n※※※※選択エラー※※※※\n※※※※半角1~4以外の数字が選択されました※※※※\n※※※※最初からやり直してください※※※※\n "
        janken("じゃんけん...","ポン！")
    end    
end


#質問
def question
    puts "ゲームを続けますか？"
    puts "[続ける]→1 [やめる]→2"
    my_answer = gets.to_i
    if my_answer == 1
        janken("\n『それではいきましょう￮(^▽^)￮！』 \nじゃんけん...","ポン！")
    elsif my_answer == 2
        puts "お疲れ様でした^^！"
        exit
    else
        puts "\n※※※※選択エラー※※※※\n※※※※半角1,2以外の数字が選択されました※※※※\n※※※※やり直してください※※※※\n "
        question
    end 
end


janken("じゃんけん...","ポン！")
  
  
#end