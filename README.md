# Concept-of-Data-Science

## Ternary Search Tree (TST) Implementation and Performance Analysis

### Group Members
- Apu Chandra Bhowmick (2469640)  
- Affnan Akter (2469853)

## Project Overview

This repository contains the implementation of a Ternary Search Tree (TST) data structure in Python. The project was developed as part of the "Concepts of Data Science" course (2024–2025) at UHasselt. The main objectives are:

- To understand and implement the TST data structure.
- To evaluate the correctness of the TST through insertion and search tests.
- To benchmark the performance of the TST using different input sizes on HPC infrastructure.

## Branches

This repository contains two branches:
- `main`: Contains the final version of the code and results from Group Member 1.
- `Update-branch`: Contains the benchmarking results and code updates from Group Member 2.

## Repository Structure


## Ternary Search Tree Implementation

The TST is implemented using an object-oriented approach in Python.

### `TernaryTreeNode` Class

Represents a single node in the TST. Each node contains:
- A character.
- A boolean `is_end` flag indicating the end of a word.
- Left, middle, and right child pointers.

### `TernarySearchTree` Class

Provides methods for interacting with the TST:
- `insert(word)`: Inserts a word into the TST (case-insensitive).
- `search(word)`: Checks if a word exists in the TST (case-insensitive).
- `starts_with(prefix)`: Checks if any word in the TST starts with the given prefix.
- `get_all_words()`: Returns a list of all words stored in the TST.
- `size()`: Returns the number of words stored in the TST.

## Benchmarking and Evaluation

The performance of the TST is evaluated by:
- Measuring insertion and search times for varying input sizes.
- Using a large word list (`corncob_lowercase.txt`) for realistic benchmarking.
- Running experiments on an HPC system using a SLURM job script (`run_benchmark.sh`).

The script `tst_benchmark.py` automatically:
- Loads the data.
- Inserts and searches words in the TST.
- Records timing data in `benchmark_results.csv`.
- Generates a performance plot saved as `tst_performance_plot.png`.



