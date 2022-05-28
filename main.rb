def acchimuitehoi
  puts "じゃんけん グー(0)チョキ(1)パー(2)"
  input_num = gets.to_i
  random_num = rand(3)

  def decide_direction(comment)
    puts "あっち向いて〜#{comment}"
    puts "左(0)右(1)上(2)下(3)"
  end

  def his_game
    direction_array = ["左","右","上","下"]
    input_num_a = gets.to_i
    random_num_a = rand(4)
    if input_num_a == random_num_a
      puts "あなたは#{direction_array[input_num_a]}を向きました。"
      puts "相手も#{direction_array[random_num_a]}を指しました。"
      puts "あなたの負けです。"
      false
    else 
      puts "あなたは#{direction_array[input_num_a]}を向きました。"
      puts "相手は#{direction_array[random_num_a]}を指しました。"
      puts "決まらなかったので、もう１回！"
      true
    end
  end

  def your_game
    direction_array = ["左","右","上","下"]
    input_num_a = gets.to_i
    random_num_a = rand(4)
    if input_num_a == random_num_a
      puts "あなたは#{direction_array[input_num_a]}を指しました。"
      puts "相手も#{direction_array[random_num_a]}を向きました。"
      puts "あなたの勝ちです。"
      false
    else 
      puts "あなたは#{direction_array[input_num_a]}を指しました。"
      puts "相手は#{direction_array[random_num_a]}を向きました。"
      puts "決まらなかったので、もう１回！"
      true
    end
  end

    if random_num == input_num
      janken_array = ["グー","チョキ","パー"]
      puts "自分：#{janken_array[input_num]}"
      puts "相手：#{janken_array[random_num]}"
      puts "あいこです"
      true
    elsif random_num == 1 && input_num == 0
      janken_array = ["グー","チョキ","パー"]
      puts "自分：#{janken_array[0]}"
      puts "相手：#{janken_array[1]}"
      decide_direction("指す方向を選んでね。")
      your_game
    elsif random_num == 2 && input_num == 1
      janken_array = ["グー","チョキ","パー"]
      puts "自分：#{janken_array[1]}"
      puts "相手：#{janken_array[2]}"
      decide_direction("指す方向を選んでね。")
      your_game
    elsif random_num == 0 && input_num == 2
      janken_array = ["グー","チョキ","パー"]
      puts "自分：#{janken_array[2]}"
      puts "相手：#{janken_array[0]}"
      decide_direction("指す方向を選んでね。")
      your_game
    else
      decide_direction("向く方向を選んでね。")
      his_game
    end
end

    next_game = true

    while next_game
      next_game = acchimuitehoi
    end