#!/usr/bin/env python

import os
import torch
import torch.distributed as dist
from torch.multiprocessing import Process


"""Do broadcast from rank 0."""
def run(rank, size):
    print('Hello from rank', rank, 'of world size', size)
    tensor = torch.zeros(1)
    if rank == 0:
        tensor += 7
    dist.broadcast(tensor, 0)
    if rank != 0:
        print('Rank', rank, 'received tensor:', tensor)


# For MPI backend the rank/size will be determined by the MPI rt so
# the params don't have any use here.
def init_processes(fn, backend='mpi'):
    dist.init_process_group(backend)
    fn(dist.get_rank(), dist.get_world_size())


if __name__ == "__main__":
    init_processes(run, backend='mpi')
