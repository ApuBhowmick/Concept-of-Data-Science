# Concept-of-Data-Science
Repository for Concept of Data Science 
                        Ternary Search Tree (TST) Implementation and Performance Analysis

Group member1: Apu Chandra Bhowmick(2469640)
Group member2: Affnan Akter(2469853)

In our repository we have two branches: one is main, and the other is Update-branch. Initially our local file code was updated in the main branch, and then we updated group member 1's final results in the main branch, and group member 2's results were updated in the update branch.

Project Overview
This repository contains the implementation of a Ternary Search Tree (TST) data structure in Python, developed as part of the "Concepts of Data Science" course (2024-2025) at Uhasselt. The primary goal of this project was to understand, implement, and benchmark the performance characteristics of TSTs for efficient string storage and retrieval.

Repository Structure
This repository is organized as follows:

tst_benchmark.py: The main Python script containing the TernarySearchTree class implementation, correctness tests, and performance benchmarking functions. (ternary_search_tree.ipynb contains the source for this script.)

data/:

data/search_trees/: Contains the input word lists used for testing and benchmarking.

insert_words.txt: A list of words used for basic correctness testing (expected to be found).

not_insert_words.txt: A list of words used for basic correctness testing (expected NOT to be found).

corncob_lowercase.txt: A large dictionary of lowercase words used for performance benchmarking.

results/: (This directory will be created by tst_benchmark.py upon execution)

benchmark_results.csv: CSV file containing the raw performance data (sample sizes, insert times, search times).

tst_performance_plot.png: PNG image of the generated performance plot from the HPC run.

run_benchmark.sh: The Slurm job script used to execute the Python benchmark script on the HPC infrastructure.

Ternary Search Tree Implementation
The Ternary Search Tree is implemented using an object-oriented approach in Python.

TernaryTreeNode Class: Represents a single node in the TST, storing a character, a boolean flag (is_end) indicating if it marks the end of a word, and pointers to its left, middle, and right children.

TernarySearchTree Class: Manages the overall tree structure, providing methods for:

insert(word): Inserts a given word into the TST. Words are stored case-insensitively (converted to lowercase).

search(word): Searches for a given word in the TST, returning True if found and False otherwise. Search is also case-insensitive.

starts_with(prefix): Checks if any word in the TST starts with the given prefix.

get_all_words(): Returns a list of all words stored in the TST.

size(): Returns the number of words stored in the TST.


