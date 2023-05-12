class Car
	def run(distance)
		puts "車で#{distance}キロ走ります。"
	end
end

class Truck < Car		# クラス名の後に「<」を付けて継承したいクラス名を記述(子クラス < 親クラス) アッパーキャメルケースで書く
end

car = Truck.new		# 作成：インスタンス名 = クラス名.new
car.run(5)		# 呼び出し：インスタンス名.メソッド名(引数)

