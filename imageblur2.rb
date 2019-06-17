class Image


  def initialize(gvinimg)
    @image = gvinimg
  end


# use row to remember that each time the code goes through line 11 it goes row by row
# join puts them all in a row
  def output_image
    @image.each do |row|
      puts row.join
    end
  end


  def blur
    ones_coord = find_ones

    @image.each_with_index do |row, row_num|
      row.each_with_index do |item, col_num|


        ones_coord.each do |ones_row_num, ones_col_num|
          if row_num == ones_row_num and col_num == ones_col_num

            @image[ones_row_num-1][ones_col_num]=1 unless ones_row_num-1 < 0
            @image[ones_row_num+1][ones_col_num]=1 unless ones_row_num+1 >= @image.length
            @image[ones_row_num][ones_col_num-1]=1 unless ones_col_num-1 < 0
            @image[ones_row_num][ones_col_num+1]=1 unless ones_col_num+1 >= @image[0].length
          end
        end  
      end
    end
  end



  def find_ones

    ones_coord = []

    @image.each_with_index do |row, row_num|
      row.each_with_index do |item, col_num|
        if item == 1 
          ones_coord << [row_num, col_num]
        end

      end
    end

    return ones_coord

  end

end



image = Image.new([
  [1, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 1]
])
image.blur
image.output_image