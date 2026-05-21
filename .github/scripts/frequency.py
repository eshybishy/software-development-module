from collections import Counter

with open("data.txt", "r") as file:
    text = file.read().lower()

vowels = "aeiou"
counts = Counter(char for char in text if char in vowels)

with open("vowel_results.txt", "w") as output:
    for vowel in vowels:
        output.write(f"{vowel}: {counts[vowel]}\n")
