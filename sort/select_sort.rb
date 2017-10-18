#coding: utf-8
require './sort_helper.rb'

def select_sort(arr)
  return arr if arr.size==0||arr.size==1
  (0...arr.size).each do |i|
    minindex = i
    (i+1...arr.size).each do |j|
      minindex = j if arr[minindex].to_i > arr[j].to_i
    end
    arr[minindex],arr[i]=arr[i],arr[minindex] if i!=minindex
  end
end  

def select_sort_for_hash(hash,index)
  arr=hash.to_a
  return arr if arr.size==0||arr.size==1
  (0...arr.size).each do |i|
    minindex = i
    (i+1...arr.size).each do |j|
      minindex = j if arr[minindex][index].to_i > arr[j][index].to_i
    end
    arr[minindex],arr[i]=arr[i],arr[minindex] if i!=minindex
  end
  Hash[arr]
end

array=SortHelper::generate_array(100,2554,87);
select_sort(array)
p array

#on function 
array_string=["A","F","G","C"]
select_sort(array_string)
p array_string

hash={:a=>11, :c=>7, :b=>8}
new_hash=select_sort_for_hash(hash,1)
p new_hash


