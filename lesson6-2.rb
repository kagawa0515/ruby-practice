puts "計算をはじめます"
puts "何回繰り返しますか"

input = gets.to_i
i = 1		#初期値を設定
while i <= input do		#while 条件文 do
	puts "#{i}回目の計算"		#処理  条件がtrueの間処理を繰り返す

	puts "2つの値を入力してください"
	a = gets.to_i
	b = gets.to_i

	puts "計算結果を出力します"
	puts "#{a} + #{b} = #{a + b}"		# 足し算
	puts "#{a} - #{b} = #{a - b}"		# 引き算
	puts "#{a} * #{b} = #{a * b}"		# 掛け算
	puts "#{a} / #{b} = #{a / b}"		# 割り算

	i += 1		# i = i + 1  iの数に1加える
end
puts "計算を終了します"