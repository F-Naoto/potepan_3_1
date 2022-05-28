

puts "じゃんけん グー(0)チョキ(1)パー(2)"
input_num = gets.to_i
random_num = rand(3)

def decide_direction(comment)
  puts "あっち向いて〜#{comment}"
  puts "左(0)右(1)上(2)下(3)"
end

def his_game
  input_num_a = gets.to_i
  random_num_a = rand(4)
  if input_num_a == random_num_a
    puts "あなたの負けです。"
  else 
    puts "決まらなかったので、もう１回！"
  end
end

def your_game
  input_num_a = gets.to_i
  random_num_a = rand(4)
  if input_num_a == random_num_a
    puts "あなたの勝ちです。"
  else 
    puts "決まらなかったので、もう１回！"
  end
end

if random_num == input_num
  puts "あいこです"
elsif random_num == 1 && input_num == 0
  decide_direction("指す方向を選んでね。")
  your_game
elsif random_num == 2 && input_num == 1
  decide_direction("指す方向を選んでね。")
  your_game
elsif random_num == 0 && input_num == 2
  decide_direction("指す方向を選んでね。")
  your_game
else
  decide_direction("向く方向を選んでね。")
  his_game
end


# じゃんけんで自分が出す手を画面入力で選ぶことができる
# 相手プレーヤーが出す手をランダムで出力させる
# じゃんけんで勝った側があっち向いてホイです指を差す方向を決める
# じゃんけんで負けた側があっち向いてホイで顔を向ける方向を決める
# 勝負がついた場合はどちらが勝者かわかるように文字列などで出力する
