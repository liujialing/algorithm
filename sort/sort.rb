#coding: utf-8
class Sort
  #冒泡排序
  def bubble_sort(arr)
    (0...arr.size).each do |i|
      (0...(arr.size-i-1)).each do |j|
        arr[j],arr[j+1] = arr[j+1],arr[j] if arr[j]>arr[j+1]
      end 
    end 
    arr 
  end  

   #冒泡排序优化
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

  #选择排序  
  def select_sort(arr)
    return arr if arr.size==0||arr.size==1
    (0...arr.size-1).each do |i|
      minindex = i
      (i+1...arr.size).each do |j|
        minindex = j if arr[minindex].to_i > arr[j].to_i
      end
      arr[minindex],arr[i]=arr[i],arr[minindex] if i!=minindex
    end
  end  

  #选择排序 (Hash) 
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

  #插入排序
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

  #插入排序优化
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

  #希尔排序
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
end