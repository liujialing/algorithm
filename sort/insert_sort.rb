#coding: utf-8

def insert_sort(arr)
  return arr if arr.size ==0 || arr.size == 1
  (1...arr.size).each do |i|
    (i).downto(1).each do |j|
      if arr[j]<arr[j-1]
        arr[j],arr[j-1]=arr[j-1],arr[j]
      else
        break
      end  
    end  
  end  
end 

def optimize_insert_sort(arr)
  return arr if arr.size ==0 || arr.size == 1
  (1...arr.size).each do |i|
    tmp,j =arr[i],i
    while(j>0&&arr[j-1]>tmp) do
      arr[j]=arr[j-1]
      j-=1
    end
    #if I change tmp into arr[i],the sort is worry.because the position is change
    arr[j]=tmp
  end 
end  

#increased interval cycle
def shell_insert(arr)
  return arr if arr.size ==0 || arr.size == 1
  gap = arr.size/2
  while(gap !=0) do
    (gap...arr.size).each do |i|
      tmp,j = arr[i],i
      while(j>0&&arr[j-gap] > tmp) do
        arr[j]=arr[j-gap]
        j-=gap
      end 
      arr[j]=tmp
    end  
    gap/=2
  end  
end  