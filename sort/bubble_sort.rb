#coding: utf-8

def bubble_sort(arr)
  (0...arr.size).each do |i|
    (0...(arr.size-i-1)).each do |j|
      arr[j],arr[j+1] = arr[j+1],arr[j] if arr[j]>arr[j+1]
     end 
  end 
  arr 
end  

def optimize_bubble_sort(arr)
  flag = arr.size
  while(flag>0)
    k=flag
    flag=0
    (0...k).each do |i|
      (0...(k-i-1)).each do |j|
        if arr[j]>arr[j+1]
          arr[j],arr[j+1] = arr[j+1],arr[j]
          flag = j
        end  
      end  
    end  
  end  
end  