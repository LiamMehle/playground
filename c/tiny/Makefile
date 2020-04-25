c-smallest:
	clang -nostdlib -Os start.s ret0.c -o ret0
	size ret0

c:
	clang ret0.c -o ret0
	size ret0

c-small:
	clang -Os ret0.c -o ret0
	size ret0

smallest:
	clang -nostdlib -Os ret0.s -o ret0
	size ret0

clean:
	rm ret0