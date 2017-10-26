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
    arr 
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

  #归并排序
  def merge_sort(arr)
    l,r = 0,arr.size-1
   merge_sort_recursion(arr,l,r)
  end  

  #自底向上的归并排序
  def merge_sort_bu(arr)
    size=1
    while(size<arr.size)
      i=0
      while(i+size<arr.size)
        if(size<16)
          arr[i..(i+size+size-1)]=optimize_insert_sort(arr[i..(i+size+size-1)])
        else(arr[i+size-1]>arr[i+size])
          merge_array(arr,i,i+size-1,[i+size*2-1,arr.size-1].min)
        end  
        i+=size*2
      end  
      size *= 2
    end 
  end  

  private 
  def merge_sort_recursion(arr,l,r)
    if r-l<=15
      arr[l..r]=optimize_insert_sort(arr[l..r]) 
      return arr[l..r]
    end
    mid = (l+r)/2
    merge_sort_recursion(arr,l,mid)
    merge_sort_recursion(arr,mid+1,r)
    if arr[mid]>arr[mid+1]
      merge_array(arr,l,mid,r)
    end  
  end

  def merge_array(arr,l,mid,r)
    tmp=arr[l..r]
    i,j=l,mid+1
    (0...tmp.size).each do |k|
      if i>mid
        tmp[k]=arr[j]
        j+=1
      elsif j>r
        tmp[k]=arr[i]
        i+=1 
      elsif arr[i]>arr[j]
        tmp[k]=arr[j]
        j+=1
      else
        tmp[k]=arr[i]
        i+=1
      end    
    end 
    arr[l..r]=tmp 
  end  

end