# 文字列とマッチした位置を返却
/abc/ =~ "abc"    # => 0
/abc/ =~ "cbaabc" # => 3

# 文字列がマッチしない場合、結果はnilになる
/abc/ =~ "ab!c" # => nil

# 複数マッチした場合は最初にマッチした位置を返却
/abc/ =~ "abc and abc" # => 0

# 大文字と小文字は区別される
/cow/ =~ "Cow" # => nil

### 特殊文字 ###

# ^は文字列の先頭を指定
/^abc/ =~ "xabc" # => nil
/^abc/ =~ "abcd" # => 0

# $は文字列の末尾を指定
/abc$/ =~ "xabc" # => 1
/abc$/ =~ "abcx" # => nil

# .(ピリオド)はどのような文字ともマッチする
/a.c/ =~ "does abc match?" # => 5

# *(アスタリスク)はその前の文字が0個以上繰り返す場合にマッチする
/ab*c/ =~ "does abbbc match?" # => 5
/ab*c/ =~ "does ac match?"    # => 5

