#coding: utf-8
require_relative 'sort'
require_relative 'sort_helper'

array=SortHelper::generate_array(10000,0,9999)

sort_array=["bubble_sort","optimize_bubble_sort","select_sort","insert_sort","optimize_insert_sort","shell_insert","merge_sort","merge_sort_bu","quick_sort"]

sort_array.each do |method_name|
  SortHelper::caculate_time(method_name,array)
end  

#array1=SortHelper::generate_nearly_order_array(100000,10)

# sort_nearly_order_array = ["optimize_insert_sort","merge_sort","merge_sort_bu"]
# array=SortHelper::generate_array(50,0,99)
# sort_nearly_order_array.each do |method_name|
#   SortHelper::caculate_time(method_name,array)
# end 


