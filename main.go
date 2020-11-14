package main

import (
	"image"
	"image/color"
	"image/draw"

	"github.com/gonutz/framebuffer"
)

func main() {
	fb, err := framebuffer.Open("/dev/fb0")
	if err != nil {
		panic(err)
	}
	defer fb.Close()

	magenta := image.NewUniform(color.RGBA{255, 0, 128, 255})
	draw.Draw(fb, fb.Bounds(), magenta, image.ZP, draw.Src)
}
