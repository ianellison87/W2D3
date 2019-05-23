class Array 
  
  def my_uniq
  deduped = []

    self.each do |el|
      unless deduped.include?(el) 
        deduped << el
      end
    end
  deduped
  end

  def two_sum
    result = []
    self.each_with_index do |num1,idx1|
      self.each_with_index do |num2,idx2|
        if self[idx1] + self[idx2] == 0 && idx2 > idx1 
          result << [idx1,idx2]
        end
      end
    end
    result
  end

  def my_transpose
    result = []

    self.each_with_index do |row,row_idx|
      new_row = []

      row.each_with_index do |col,col_idx|
        new_row << self[col_idx][row_idx]
      end
      result << new_row
    end

    result
  end

  def stock_picker
    prices = Hash.new(0)

    self.each_with_index do |price1, day1| # |ele, idx|
      self.each_with_index do |price2, day2| # |ele, idx|
        if day2 > day1 
          total = price2 - price1
          prices[[day1,day2]] = total
        end
      end
    end
    
    prices.sort_by { |k, v| v }[0][0]

  end


p [100,50,1000,500,90].stock_picker





end
