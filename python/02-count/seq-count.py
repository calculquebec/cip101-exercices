import argparse
from collections import Counter

def count_words(filename):
    word_counts = Counter()

    with open(filename) as file:
        for line in file:
            word_counts.update(line.split())

    return word_counts


def process_file(filename):
    word_counts = count_words(filename)

    result = f'{filename} has {sum(word_counts.values())} words'

    result += 'top 3 common are:\n'
    for word, count in word_counts.most_common(3):
        result += f'\t{word} : {count}\n'

    return result


if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    parser.add_argument('files', nargs='+')

    args = parser.parse_args()

    for filename in args.files:
        print(process_file(filename))
