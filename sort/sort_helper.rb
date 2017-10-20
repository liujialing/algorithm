#coding: utf-8
module SortHelper
  def self.generate_array(num,rangA,rangB)
    if rangA>rangB
      rangA,rangB = rangB,rangA
    end  
    Array.new(num){rand(rangA...rangB)}
  end

  def self.caculate_time(method_name)
    start_time=Time.now.to_f*1000.to_i
    yield
    end_time = Time.now.to_f*1000.to_i
    puts method_name+" costs "+(end_time-start_time).to_s+" mili seconds"
  end  

  def self.correct?(arr)
    (0...arr.size-1).each do |i|
        return false if(arr[i]>arr[i+1]) 
     end
     return true 
  end 
  
end
