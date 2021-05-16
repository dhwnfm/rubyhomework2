def janken
puts "0(グー)1(チョキ)2(バー)3(戦わない)"

bongju_hand = gets.to_i
eunjin_hand = rand(4)

jankens = ["グー","チョキ","バー","戦わない"]

case bongju_hand 
when (0..3)
puts "ホイ！"
puts "--------------"    
puts "あなた：#{jankens[bongju_hand]}を出しました"
puts "相手： #{jankens[eunjin_hand]} を出しました。"
puts "--------------"   

 if bongju_hand == eunjin_hand
    @case_pattern = "drow" 
    puts "あいこで..."
    return true
 elsif bongju_hand == 0 && eunjin_hand == 2 ||
       bongju_hand == 1 && eunjin_hand == 0 ||
       bongju_hand == 2 && eunjin_hand == 1
   @case_pattern = "lose" 
    puts "eunjin win! eunjinのターン！"
    return false
 elsif bongju_hand == 0 && eunjin_hand == 1 ||
       bongju_hand == 1 && eunjin_hand == 2 ||
       bongju_hand == 2 && eunjin_hand == 0
   @case_pattern = "win" 
    puts "bongju win! bongjuのターン！"
    return false
  else 
   puts "what?" 
   return false
  end
 end
end

def a_hoi
puts "あっちむいて..."
puts "0(上)1(下)2(左)3(右)"

muki = ["上","下","左","右"]

bongju_direction = gets.to_i
eunjin_direction = rand(4)

puts "ホイ！"

case bongju_direction
when (0..3)
 puts "あなた：#{muki[bongju_direction]}を出しました"
 puts "相手： #{muki[eunjin_direction]} を出しました。"
 puts "--------------"   
 
if bongju_direction == eunjin_direction
   result = 0
 else 
   result = 1
 end
 
  case @case_pattern
    when "win"
      if result == 0
        puts "bongjuの勝利！！！"
        @endressgame = false
      elsif result == 1
        puts "もう一回！"
        @endressgame = true
      end
    when "lose"
      if result == 0
        puts "eunjinの勝利！！！"
        @endressgame = false
      elsif result == 1
        puts "もう一回！"
        @endressgame = true
      end
   end    
 end
end

@endressgame = true

while @endressgame do
  next_janken = true
  
  puts "じゃんけん..."
  
  while next_janken do
    next_janken = janken
  end
  
  case @case_pattern
    when "win","lose"
      a_hoi
      @case_pattern = nil
    else
      return
  end
end