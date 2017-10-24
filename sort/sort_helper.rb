#coding: utf-8
#require "./sort.rb"
module SortHelper
  def self.generate_array(num,rangA,rangB)
    if rangA>rangB
      rangA,rangB = rangB,rangA
    end  
    Array.new(num){rand(rangA...rangB)}
  end

  def self.generate_nearly_order_array(num,swap_time)
    array=(0...num).to_a
    (0...swap_time).each do
      i=rand(0...num)
      j=rand(0...num)
      array[i],array[j]=array[j],array[i]
    end 
    array
  end  

  def self.caculate_time(method_name,array)
    array_tmp=array.clone
    sort= Sort.new
    start_time=Time.now.to_f*1000.to_i
    sort.send(method_name,array_tmp)
    end_time = Time.now.to_f*1000.to_i
    puts method_name+" costs "+(end_time-start_time).to_s+" mili seconds"
  end  
  
end
