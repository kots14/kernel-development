# Kernel Development

Exercises from the book **Kernel development by Daniel McCarthy [Vol 1](https://www.amazon.com/dp/B0CMNWQYP7?ref=ppx_yo2ov_dt_b_fed_asin_title) and [Vol 2](https://www.amazon.com/dp/B0CMNWWCPG?ref=ppx_yo2ov_dt_b_fed_asin_title)**

- Part 3 (Installing what we need for real mode kernel development)
    - Run `./setup-dev-env.sh`
- Part 5 (Hello World Bootloader)\
    - Run `nasm -f bin boot.asm -o boot.bin`
    - Run in separate terminal `qemu-system-x86_64 -hda boot.bin -nographic`


# Troubleshooting

### Links that helped so far

- For Part 5 - [Stack Overflow - fixing error in running QEMU command](https://stackoverflow.com/questions/69063311/how-can-i-boot-my-bootsector-files-with-qemu)