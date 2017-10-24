#coding: utf-8
require_relative 'sort'
require_relative 'sort_helper'

array=SortHelper::generate_array(100,0,9999)

sort_array=["bubble_sort","optimize_bubble_sort","select_sort","insert_sort","optimize_insert_sort","shell_insert"]

sort_array.each do |method_name|
  SortHelper::caculate_time(method_name,array)
end  

