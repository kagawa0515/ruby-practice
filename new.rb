# インスタンスメソッドselfが定義された場合
class Car
	def turn(direction)
		puts "#{direction}に曲がります。"
	end

	def run(distance)
		puts "車で#{distance}キロ走ります。"
	end
end

car = Car.new
car.turn("右")

car = Car.new		# 作成  インスタンス名 = クラス名.new
car.run(5)		# 呼び出し  インスタンス名.メソッド名(引数)


# インスタンスメソッド
class Car
	def move(direction, distance)
		self.turn(direction)
		# インスタンスメソッド内でselfを定義した場合、そのメソッドを呼び出したレシーバがselfの値
		self.run(distance)
	end

	def turn(direction)
		puts "#{direction}に曲がります。"
	end

	def run(distance)
		puts "#{distance}キロで走ります。"
	end
end

car = Car.new
car.move("右", 5)
# レシーバーとはメソッドを呼び出したオブジェクト自身。
# carがmoveメソッドを呼び出している。car=レシーバー。
# インスタンスメソッド内でselfを定義した場合、そのメソッドを呼び出したレシーバがselfの値となる。car = レシーバー = selfの値

#演習問題
class Car
	def self.turn(direction)
		puts "#{direction}に曲がります。"
	end
end

car.turn("右")