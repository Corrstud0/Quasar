import os
import json
from PIL import Image

# yoink assets (local only)
BASE = os.path.dirname(os.path.abspath(__file__))
TEXTURE_DIR = os.path.join(BASE, "textures")

# adv. color thingh
def average_color(image_path):
    img = Image.open(image_path).convert("RGBA")
    pixels = img.getdata()

    r_total = g_total = b_total = count = 0

    for r, g, b, a in pixels:
        if a == 0:
            continue
        r_total += r
        g_total += g
        b_total += b
        count += 1

    if count == 0:
        return (0, 0, 0)

    return (r_total // count, g_total // count, b_total // count)

# make indexable thingy
def build_index():
    index = {}

    for file in os.listdir(TEXTURE_DIR):
        if not file.endswith(".png"):
            continue

        block_id = file.replace(".png", "")
        path = os.path.join(TEXTURE_DIR, file)

        r, g, b = average_color(path)

        index[block_id] = {
            "hex": "#{:02X}{:02X}{:02X}".format(r, g, b),
            "rgb_normalized": {
                "r": round(r / 255, 4),
                "g": round(g / 255, 4),
                "b": round(b / 255, 4)
            }
        }

    with open(os.path.join(BASE, "block_colors.json"), "w") as f:
        json.dump(index, f, indent=4)

    print("block_colors.json created.\n")

# query
def query():
    with open(os.path.join(BASE, "block_colors.json")) as f:
        data = json.load(f)

    while True:
        block = input("Enter block id (or 'exit'): ").strip().lower()
        if block == "exit":
            break

        if block not in data:
            print("Block not found.\n")
            continue

        print("Average HEX:", data[block]["hex"])
        print("Average Normalized RGB:", data[block]["rgb_normalized"])
        print()

# ran everying
if __name__ == "__main__":
    build_index()
    query()
