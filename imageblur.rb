class Image
	attr_accessor :givinimage

	def initialize(givinimage)
		self.givinimage = givinimage
	end



	def output_image
		@givinimage.each do |f|
			puts f.join('')
		end
	end


end





image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image





