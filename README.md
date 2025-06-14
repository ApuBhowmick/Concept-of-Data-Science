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
- `main`: Contains the final version of the code from both members and results from Group Member 1.
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

## Code Quality and Documentation

The code is written with a strong emphasis on readability and maintainability. All classes and functions include informative docstrings that describe:

- Their purpose
- Input arguments
- Return values

Type hints are consistently used throughout the codebase to improve clarity and assist in static analysis and code completion.

## Correctness Testing

The tst_benchmark.py script includes a suite of correctness tests to verify the functionality of the Ternary Search Tree (TST) implementation.

### Test Inputs
- insert_words.txt: Words expected to be found in the TST.
- not_insert_words.txt: Words not inserted and expected to be absent.

### Verified Behaviors
- Inserted words are successfully found using search().
- Words not inserted return False on search.
- Prefix matches (e.g., searching "app" when "apple" is in the tree) are correctly handled by starts_with().
- Edge cases are tested, including:
  - Empty strings
  - Words with shared/common prefixes
  - Prefixes that are not complete words

The methods get_all_words() and size() are also used to confirm that:
- All inserted words are present in the tree
- The number of words returned matches expectations

## Time and Space Complexity Analysis

### Time Complexity

| Operation       | Average Case          | Worst Case               |
|----------------|------------------------|---------------------------|
| Insertion       | O(L + log N)          | O(L ⋅ N) or O(L + M)      |
| Search          | O(L + log N)          | O(L ⋅ N) or O(L + M)      |
| Prefix Search   | O(L)                  | O(L)                      |

- *L*: Length of the word or prefix
- *N*: Number of words in the TST
- *M*: Number of comparisons (can be up to L × alphabet size in degenerate cases)

In a well-balanced tree, traversal across left/right child pointers is logarithmic (log N), while middle pointers are followed per character (L). In degenerate cases, where the tree becomes unbalanced, time complexity increases accordingly.

### Space Complexity

- *Average Case*: O(C × K)
  - *C*: Total number of unique characters across all words
  - *K*: Average number of nodes per word path

- *Worst Case*: O(∑Li)  
  Where *Li* is the length of the i-th word (when words share few or no prefixes)

Compared to standard tries, TSTs offer better space efficiency for sparse datasets due to their selective node creation and compact branching.

## Performance Benchmarking

Performance benchmarking was conducted using a large dataset (`corncob_lowercase.txt`) to evaluate the efficiency of the Ternary Search Tree (TST) insert and search operations. The experiments were executed on the KU Leuven HPC infrastructure to ensure consistent, high-performance testing conditions.

### Methodology

The `benchmark_tst_insert_and_search()` function systematically measures the total time taken to insert and search an increasing number of words in the TST.

#### Key Setup:

- **Sample Sizes**: Benchmarks were conducted for input sizes ranging from **5,000 to 50,000 words**.
- **Realistic Scenario**: To simulate average-case usage, the input word list was **randomly shuffled** before each run. This avoids biases due to sorted or highly structured data.
- **Timing**: Both insertion and search times were recorded separately to assess their individual contributions to total runtime.

### Average Case Simulation

Shuffling the word list before each benchmark run provides a more representative estimate of average-case performance by introducing randomness in the TST structure.

### Best/Worst Case Consideration

- **Best Case**: Would occur if inserted words balanced the TST perfectly (not tested explicitly).
- **Worst Case**: Could occur if all insertions go into one branch (e.g., inserting sorted or very similar words), resulting in a degenerate structure.
- **Current Focus**: This benchmarking simulates average performance. However, the included theoretical complexity analysis outlines expected behavior under both ideal and degenerate conditions.

## Discussion
![TST Performance Plot](https://github.com/ApuBhowmick/Concept-of-Data-Science/blob/main/HPC%20Benchmarking2/results/tst_performance_plot.png)


### Overall Trends

Both insertion and search times increase with the number of words, as expected in a growing data structure. Running the benchmarks on the KU Leuven HPC infrastructure results in a cleaner performance profile compared to local runs, as it minimizes interference from background processes.

### Insert vs. Search

Insertion times are consistently higher than search times across all sample sizes. This is expected, as inserting a word involves not only traversing the tree but also potentially creating new nodes and modifying the structure. In contrast, searching only requires traversal of existing nodes.

### Near-Linear Growth

For sample sizes ranging from *5,000 to 50,000 words, both insert and search times exhibit a near-linear growth trend. This observation is consistent with the theoretical average-case complexity of **O(L + log N)*, where:

- *L* is the average length of the word.
- *N* is the number of nodes in the tree.

Although the logarithmic term (log N) implies sub-linear scaling, the dominant factor for this dataset (using words from corncob_lowercase.txt) appears to be the character comparisons involved, influenced primarily by word length (L). The tree’s structure, which efficiently shares common prefixes, helps maintain this relatively smooth scaling behavior.

### Efficiency

The Ternary Search Tree shows strong practical efficiency for string-based operations. Even at the maximum tested size of *50,000 words*:
- Total *search time* remains under *0.3 seconds*.
- Total *insertion time* stays just over *0.5 seconds*.

These results highlight the TST’s suitability for applications that require fast, scalable dictionary-like lookups and insertions.


## Conclusion

The Ternary Search Tree (TST) implementation successfully demonstrated its capability to efficiently store and retrieve a substantial number of words. 

Benchmarking on the KU Leuven HPC infrastructure confirmed that both insertion and search operations scale effectively with increasing dataset sizes, showing near-linear growth consistent with theoretical average-case complexity.

Overall, the TST proves to be a robust and performant data structure for dictionary-like applications—especially in scenarios where memory efficiency and fast string operations are essential.
