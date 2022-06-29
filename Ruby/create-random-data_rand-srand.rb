# 引数なしで呼び出した場合、0以上、1未満の小数値を生成
# 実行するたびに生成される値が変化する
num = rand
p "引数なし：" + num.to_s
#=> 例："引数なし：0.8091768001276516"

# 以下の3つは引数を指定した場合
# 0以上、引数の値未満の整数値を生成
num = rand(10)
p "引数指定(10)：" + num.to_s
#=> 例："引数指定(10)：5"

# 0以上、引数の値の絶対値未満の整数値を生成
num = rand(-10)
p "引数指定(-10)：" + num.to_s
#=> 例："引数指定(-10)：4"

# 0以上、小数の整数部分の値(4)未満の整数値を生成
num = rand(4.8)
p "引数指定(4.8)：" + num.to_s
#=> 例："引数指定(4.8)：3"

# 単に数値を設定するだけでは、乱数の生成範囲は最大値のみしか調整することができないので、最小値と最大値ともに範囲を指定したい場合は、Rangeオブジェクトを引数に設定する

# 引数にRangeオブジェクトを指定
# → Rangeオブジェクトの範囲内の整数値を生成
num = rand(4..9)
p "引数指定(4~9)：" + num.to_s

# 引数にRangeオブジェクト（終端を含まない）を指定
# → Rangeオブジェクトの範囲内（終端を含まない）の整数値を生成
num = rand(4...9)
p "引数指定(4~9)：" + num.to_s

# 引数にRangeオブジェクト（小数）を指定
# → Rangeオブジェクトの範囲内（小数）の実数値を生成
num = rand(1.0..2.1)
p "引数指定(1.0~2.1)：" + num.to_s

# Rangeオブジェクトの最小値と最大値が逆転している
# → nilが返される
num = rand(10..8)
p "引数指定(10~8)：" + num.to_s

# 乱数種を与えるとどう言う動作をするの？
# 乱数の種を与える
srand(3)
# 出力する
puts rand(100) #=> 24
puts rand(100) #=> 3
# 別の乱数種を与える
srand(1)
# 出力する
puts rand(100) #=> 37
puts rand(100) #=> 12
# 乱数種を元に戻す
srand(3)
# 出力する
puts rand(100) #=> 24
puts rand(100) #=> 3

# 乱数種を設定すると、固定の乱数が出力されるようになる
# 乱数種を途中で変えて元に戻した場合でも、元のものと同じものが固定で出力される