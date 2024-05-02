#!/bin/env python3

import argparse
import timeit


def crunch(x):
    x *= 5
    x *= x
    x += x
    x /= 2


def numpy_compute(N):
    crunch(np.ones((N, N, N)))


def cupy_compute(N):
    crunch(cp.ones((N, N, N)))


if __name__ == '__main__':

    parser = argparse.ArgumentParser()
    parser.add_argument('-n', '--numbers', type=int, default=500, help="Size of 3d matrix")
    parser.add_argument('--cpu', action='store_true', help="Crunch on CPU")
    parser.add_argument('--gpu', action='store_true', help="Crunch on GPU")

    args = parser.parse_args()

    if args.cpu:
        import numpy as np
        print(f"numpy : {timeit.Timer(lambda: numpy_compute(args.numbers)).timeit(10)}s")

    if args.gpu:
        import cupy as cp
        assert cp.cuda.runtime.getDeviceCount() > 0, "No GPU device found"
        print(f"cupy : {timeit.Timer(lambda: cupy_compute(args.numbers)).timeit(10)}s")
