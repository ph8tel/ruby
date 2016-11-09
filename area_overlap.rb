
def rec_intersection(rect1, rect2)

xmin = rect1[0][0] > rect2[0][0] ? rect1[0][0] : rect2[0][0]
xmax = rect1[1][0] > rect2[1][0] ? rect2[1][0] : rect1[1][0]
ymin = rect1[0][1] > rect2[0][1] ? rect1[0][1] : rect2[0][1]
ymax = rect1[1][1] > rect2[1][1] ? rect2[1][1] : rect1[1][1]
return nil if ((xmax < xmin) || (ymax < ymin))
return [ [xmin, ymin], [xmax, ymax]  ]
end

puts("\nTests for #rec_intersection")
puts("===============================================")
    puts "rec_intersection([[0, 0], [2, 1]], [[1, 0], [3, 1]]) == [[1, 0], [2, 1]]: "  + (rec_intersection([[0, 0], [2, 1]], [[1, 0], [3, 1]]) == [[1, 0], [2, 1]]).to_s

#     def rec_intersection(rect1, rect2)
  # x_min = [rect1[0][0], rect2[0][0]].max
  # x_max = [rect1[1][0], rect2[1][0]].min


#   return nil if ((x_max < x_min) || (y_max < y_min))
#   return [[x_min, y_min], [x_max, y_max]]
# end
