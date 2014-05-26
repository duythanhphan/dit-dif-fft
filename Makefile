all: dit_fft dif_fft math_fft

clean:
	rm -rf slowft fastft

math_fft: fft_test.c dit_fft.c
	cc -std=gnu99 -g -O0 -o $@ fft_test.c dit_fft.c -lm

dit_fft: fft_test.c dit_fft.c
	cc -std=gnu99 -g -O0 -DUSE_FFT -o $@ fft_test.c dit_fft.c -lm

dif_fft: dif_fft.c
	cc -std=gnu99 -g -O0 -o $@ $< -lm
