#coding: utf-8
module SortHelper
  def self.generate_array(num,rangA,rangB)
    arr = []
    if rangA>rangB
      rangA,rangB = rangB,rangA
    end  
    prng = Random.new
    (0...num).each do
      arr << prng.rand(rangA..rangB)
    end  
    arr
  end
  
end
