# Docker-FontForge
Dockerfile and Makefile for running FontForge without local installation.

## flip-solidus

Copies the glyph of `U+002F` (SOLIDUS) into `U+005C` (REVERSE SOLIDUS) and flips it horizontally.

### Usage

1. Copy fonts which you want to modify into *./fonts/src*.
2. Run `make interactive`.
3. Run `make flip-solidus` in the container.
4. Then you can retrieve the modified fonts at *./fonts/dst.*
