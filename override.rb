class Car
	def run(distance)
		puts "車で#{distance}キロ走ります。"
	end
end
class Bus < Car		# 子クラス < 親クラス
	def run(distance)
		# puts "バスで#{distance}キロ走ります。"
		super		# 子クラスのメソッド内に定義すると、親クラス内にある同じ名前のメソッド【この場合はrun(distance)】で呼び出すことができる
		puts "30人乗せて、走っています。"
	end
end

bus = Bus.new
bus.run(5)

# car = Car.new
# car.run(5)

=begin
オーバライドにより親クラスのメソッドは実行されず、子クラスのメソッドが実行される。
親クラスのメソッドを呼び出す時はこのように記述しなければならないが
子クラスのメソッド内でsuperを定義すると
親クラス内にある同じ名前のメソッドを呼び出すことができる。
「30人乗せて、走っています。」というような親クラスのメソッドにはない要素を追加したい時などに使用する。
=end