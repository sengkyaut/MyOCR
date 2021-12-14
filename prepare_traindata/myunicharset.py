#!/usr/bin/env python3
import sys

if len(sys.argv) < 1:
    exit(f"Usage {sys.argv[0]} input.txt")

file = sys.argv[1]

charset = set()

with open(file, 'r', encoding='utf-8') as file:
    for line in file:
        for c in line.strip():
            code = ord(c)
            if (
                (0x1000 <= code and code <= 0x109f) or
                (0xaa60 <= code and code <= 0xaa7f) or
                (0xa9e0 <= code and code <= 0xa9fe)
            ):
                charset.add(c)

print(f"Current avilliable charset {len(charset)}")
charset = sorted(charset)
print(charset)
# print hexcode for better vision
print([hex(ord(a)) for a in charset])

standard = [a for a in range(0x1000, 0x109f + 1)]
ext_a = [a for a in range(0xaa60, 0xaa7f + 1)]
ext_b = [a for a in range(0xa9e0, 0xa9fe + 1)]

all_mm_unicode = standard + ext_a + ext_b
print(f"Total mm unicode {len(all_mm_unicode)}")

notfound = set()

for c in all_mm_unicode:
    char = chr(c)
    if char not in charset:
        notfound.add(char)
        
print(f"MM unicode remaining to train {len(notfound)}")
notfound = sorted(notfound)
print(notfound)

# print hexcode for better vision
print([hex(ord(a)) for a in notfound])

# with open('charset_out.txt', 'w', encoding='utf-8') as file:
#     for char in charset:
#         file.write(char + "\n")
