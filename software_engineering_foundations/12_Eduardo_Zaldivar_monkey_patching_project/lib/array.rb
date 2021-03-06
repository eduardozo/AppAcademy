# frozen_string_literal: true
# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if empty?

    max - min
  end

  def average
    return nil if empty?

    sum / size.to_f
  end

  def median
    return nil if empty?

    mid_index = length / 2
    sorted_arr = sort

    return sorted_arr[mid_index] if length.odd?

    (sorted_arr[mid_index] + sorted_arr[mid_index - 1]) / 2.0 if length.even?
  end

  def counts
    hash = Hash.new(0)

    each { |k| hash[k] += 1 }

    hash
  end

  def my_count(value)
    count = 0

    self.each { |v| count += 1 if value == v }

    count
  end

  def my_index(value)
    self.each_with_index { |ele, index| return index if value == ele }

    nil
  end

  def my_uniq
    hash = {}

    self.each { |ele| hash[ele] = 0 }

    hash.keys
  end

  def my_transpose
    transposed = Array.new(self.length) { [] }

    self.each do |ele|
      ele.each_with_index do |sub_ele, i|
        transposed[i] << sub_ele
      end
    end

    transposed
  end

end
