#!/usr/bin/env python

import platform
from mpi4py import MPI

comm = MPI.COMM_WORLD

print(f"Hello! I'm rank {comm.rank} from {comm.size}, running on {platform.node()}.")

comm.Barrier()   # wait for everybody to synchronize _here_
