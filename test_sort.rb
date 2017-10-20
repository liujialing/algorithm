#coding: utf-8
Dir["./sort/*.rb"].each {|file| require file }

array=SortHelper::generate_array(10000,0,9999)
#array=SortHelper::generate_nearly_order_array(10000,10)
array1=array.clone
array2 = array.clone
array3 =array.clone
array4 = array.clone
array5 = array.clone

SortHelper::caculate_time("bubble_sort") do
  bubble_sort(array1)
end

SortHelper::caculate_time("optimize_bubble_sort") do
  optimize_bubble_sort(array5)
end  

SortHelper::caculate_time("select_sort") do
  select_sort(array2)
end

SortHelper::caculate_time("insert_sort") do
  insert_sort(array)
end

SortHelper::caculate_time("optimize_insert_sort") do
  optimize_insert_sort(array3)
end  

SortHelper::caculate_time("shell_insert") do
  shell_insert(array4)
end  

