if (image_xscale <= size) {
	image_xscale += size / 12;
	image_yscale += size / 12;
} else {
	y += 0.25;
	image_alpha -= 0.01;
}