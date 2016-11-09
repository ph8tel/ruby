# github.com/ph8tel

# `rec_intersection(rect1, rect2)` and returns the
# intersection of the two rectangles.
# The rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).

def rec_intersection(rect1, rect2)

xmin = rect1[0][0] > rect2[0][0] ? rect1[0][0] : rect2[0][0]
xmax = rect1[1][0] > rect2[1][0] ? rect2[1][0] : rect1[1][0]
ymin = rect1[0][1] > rect2[0][1] ? rect1[0][1] : rect2[0][1]
ymax = rect1[1][1] > rect2[1][1] ? rect2[1][1] : rect1[1][1]
return nil if ((xmax < xmin) || (ymax < ymin))
return [ [xmin, ymin], [xmax, ymax]  ]
end

