#!/usr/bin/env python3
import struct
import zlib
from pathlib import Path


def chunk(tag: bytes, data: bytes) -> bytes:
    return (
        struct.pack('>I', len(data))
        + tag
        + data
        + struct.pack('>I', zlib.crc32(tag + data) & 0xFFFFFFFF)
    )


def write_png(path: Path, width: int, height: int, rgb: tuple[int, int, int]) -> None:
    r, g, b = rgb
    raw = b''.join(b'\x00' + bytes([r, g, b]) * width for _ in range(height))
    ihdr = struct.pack('>IIBBBBB', width, height, 8, 2, 0, 0, 0)
    png = (
        b'\x89PNG\r\n\x1a\n'
        + chunk(b'IHDR', ihdr)
        + chunk(b'IDAT', zlib.compress(raw, 9))
        + chunk(b'IEND', b'')
    )
    path.write_bytes(png)


def main() -> None:
    root = Path(__file__).resolve().parents[1]
    images = root / 'assets' / 'images'
    images.mkdir(parents=True, exist_ok=True)
    write_png(images / 'app_icon.png', 1024, 1024, (15, 118, 110))
    write_png(images / 'splash_logo.png', 512, 512, (15, 118, 110))
    print('wrote placeholder pngs')


if __name__ == '__main__':
    main()
