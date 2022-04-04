# Date クラス

require "date"
require "active_support/all"

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

# Date で作ったデータを Datetime にしてみる

date = Date.today
datetime = date.strftime('%Y年%m月%d日 %H時%M分%S秒')
p datetime
# "2022年04月04日 00時00分00秒"

datetime_strf = Time.strptime(datetime, '%Y年%m月%d日 %H時%M分%S秒')
p datetime_strf
# 2022-04-04 00:00:00 +0900

# 手間はかかるけどdateのものをdatetimeに変換はできるらしい…
# strptime は activesupport の method なので、require しないと使えない（Rails では使える）

date = Date.today
datetime = date.strftime('%Y年%m月%d日 09時00分00秒')
p datetime
# "2022年04月04日 09時00分00秒"

datetime_strf = Time.strptime(datetime, '%Y年%m月%d日 %H時%M分%S秒')
p datetime_strf
# 2022-04-04 09:00:00 +0900

# 時間を指定してdatetimeに変換することもできるらしい…！！
