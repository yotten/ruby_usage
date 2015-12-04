### 写像（map）###
acids = ["Adenin", "Thymine", "Guanine", "Cytosine"]
acids.map{|acid| acid[0, 2]}                       # => ["Ad", "Th", "Gu", "Cy"]

# 単純なmap
acids.map{|acid| acid.downcase}                    # => ["adenin", "thymine", "guanine", "cytosine"]

# 省略バージョン
acids.map(&:upcase)                                # => ["ADENIN", "THYMINE", "GUANINE", "CYTOSINE"]
