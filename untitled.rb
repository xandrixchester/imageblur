def manhattan_distance (x1, y1, x2, y2)
  horizontal = (x2-x1).abs
  vertical = (y2-y1).abs
  (horizontal + vertical).abs
end

puts manhattan_distance(0, 0, 1, 3)
