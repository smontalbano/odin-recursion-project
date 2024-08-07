# frozen_string_literal: true

require 'pry-byebug'

class MergeSort
  def self.sort(arr)
    return arr if arr.length <= 1

    arr_left = arr.slice!(0, (arr.length / 2).floor)
    arr_left = sort(arr_left)
    arr_right = sort(arr)
    merge(arr_left, arr_right)
  end

  def self.merge(left, right)
    merged_arr = []
    until left.empty? || right.empty?
      if left[0] <= right[0]
        merged_arr.push(left.shift)
      else
        merged_arr.push(right.shift)
      end
    end
    merged_arr.concat(left).concat(right)
  end
end
