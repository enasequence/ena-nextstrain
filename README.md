# ENA_nextstrain_phylogeny


This instance enables the generation of phylogenetic analyses for Zika and West Nile viruses using Nextstrain.

## [Installing Nextstrain](https://docs.nextstrain.org/en/latest/install.html)

Usage:

1. Clone the repository:
   ```
   git clone https://github.com/enasequence/ena-nextstrain.git
   ```

2. Navigate to the project directory:
   ```
   cd ena-nextstrain
   ```

3. Run the main Python script:
   ```
   python main.py -o output/
   ```
   Or
   ```
   sh nextstrain_job.sh
   ```

4. View the results in Nextstrain's Auspice visualization tool:
   ```
   nextstrain view output/
   ```
