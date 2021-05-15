puts "じゃんけん。。。"
puts "0(グー)1(チョキ)2(バー)3(戦わない)"

bongju_hand = gets.to_i
eunjin_hand = rand(4)

jankens = ["グー","チョキ","バー","戦わない"]
direction = ["上","下","左","右"]

case bongju_hand 
when (0..3)
puts "ホイ！"
puts "--------------"    
puts "あなた：#{jankens[bongju_hand]}を出しました"
puts "相手： #{jankens[eunjin_hand]} を出しました。"
puts "--------------"   

 if bongju_hand == eunjin_hand
  puts "save"
 elsif bongju_hand == 0 && eunjin_hand == 2 ||
       bongju_hand == 1 && eunjin_hand == 0 ||
       bongju_hand == 2 && eunjin_hand == 1
  puts "lose"
 elsif bongju_hand == 0 && eunjin_hand == 1 ||
       bongju_hand == 1 && eunjin_hand == 2 ||
       bongju_hand == 2 && eunjin_hand == 0
  puts "win" 
 else 
   puts "what?" 
 end
end