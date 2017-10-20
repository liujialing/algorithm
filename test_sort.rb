#coding: utf-8
Dir["./sort/*.rb"].each {|file| require file }

array=SortHelper::generate_array(10,0,9999)
array2 = array.clone
array3 =array.clone

SortHelper::caculate_time("insert_sort") do
  insert_sort(array)
end

SortHelper::caculate_time("select_sort") do
  select_sort(array2)
end

SortHelper::caculate_time("optimize_insert_sort") do
  optimize_insert_sort(array3)
end  

