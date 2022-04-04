# Date クラス

require "date"

date = Date.today
puts date

# date を require しないと例外が発生
# Ruby/Date-Datetime-Time.rb:3:in `<main>': uninitialized constant Date (NameError)

# require したらちゃんと日付が返ってくる
# 2022-04-04

# 指定した日付を取得するには以下のように記述

date = Date.new(2022, 1, 1)
puts date

# 2022-01-01

# Datetime クラス

date = DateTime.now
puts date

# こちらも date を require しないと例外が発生
# Ruby/Date-Datetime-Time.rb:23:in `<main>': uninitialized constant DateTime (NameError)

# require したらちゃんと日付・時間が返ってくる
# 2022-04-04T10:15:09+09:00

# Time クラス

date = Time.now
puts date

# Datetime と同じように日付・時間を扱うことができる
# require は必要ない
# 2022-04-04 10:16:56 +0900
