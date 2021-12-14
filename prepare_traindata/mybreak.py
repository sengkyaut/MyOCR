#!/usr/bin/env python
import sys

if len(sys.argv) < 2:
    exit(f"Usage {sys.argv[0]} input.txt out.txt")

file = sys.argv[1]
out = sys.argv[2]
data = ""

with open(file, 'r', encoding='utf-8') as file:
    for line in file:
        for c in line:
            # print(hex(ord(c)))
            code = ord(c)
            # print(code)
            if (
                    (code >= 0x102b and code <= 0x103e) or
                    (code >= 0x1056 and code <= 0x1059) or
                    (code >= 0x105e and code <= 0x1060) or
                    (code >= 0x1061 and code <= 0x1064) or
                    (code >= 0x1067 and code <= 0x106d) or
                    (code >= 0x1071 and code <= 0x1074) or
                    (code >= 0x1082 and code <= 0x108d) or
                    (code == 0x108f) or
                    (code >= 0x109a and code <= 0x109d) or
                    (code >= 0xaa7b and code <= 0xaa7d) or
                (code == 0xa9e5) or
                    (code == 0x20)

                ):
                    data += c
            else:
                    data += " "
                    data += c
                    
with open(out, 'w', encoding='utf-8') as file:
    file.write(data)
