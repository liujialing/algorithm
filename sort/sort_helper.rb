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

  def self.caculate_time(method_name)
    start_time=Time.now.to_i
    yield
    end_time = Time.now.to_i
    puts method_name+" costs "+(end_time-start_time).to_s+" seconds"
  end  
  
end
