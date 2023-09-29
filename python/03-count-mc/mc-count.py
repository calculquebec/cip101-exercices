# Multi-coeurs / Multi-cores

import argparse, os
from collections import Counter
import multiprocessing

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

    return f"{multiprocessing.current_process().name}:\n{result}"


if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    parser.add_argument('files', nargs='+')
    parser.add_argument('-n', '--cpus', type=int, default=os.environ.get('SLURM_CPUS_PER_TASK', 1))

    args = parser.parse_args()

    with multiprocessing.Pool(args.cpus) as pool:
        for result in pool.map(process_file, args.files):
            print(result)
