#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running client_001.champsimtrace.xz"
sh ./run_champsim.sh bimodal-next_line-no-no-no-lru-1core 50 50 client_001.champsimtrace.xz

echo "Running client_002.champsimtrace.xz"
sh ./run_champsim.sh bimodal-next_line-no-no-no-lru-1core 50 50 client_002.champsimtrace.xz

echo "Running client_003.champsimtrace.xz"
sh ./run_champsim.sh bimodal-next_line-no-no-no-lru-1core 50 50 client_003.champsimtrace.xz

echo "Running client_004.champsimtrace.xz"
sh ./run_champsim.sh bimodal-next_line-no-no-no-lru-1core 50 50 client_004.champsimtrace.xz

echo "Running client_005.champsimtrace.xz"
sh ./run_champsim.sh bimodal-next_line-no-no-no-lru-1core 50 50 client_005.champsimtrace.xz

echo "Running client_006.champsimtrace.xz"
sh ./run_champsim.sh bimodal-next_line-no-no-no-lru-1core 50 50 client_006.champsimtrace.xz

echo "Running client_007.champsimtrace.xz"
sh ./run_champsim.sh bimodal-next_line-no-no-no-lru-1core 50 50 client_007.champsimtrace.xz

echo "Running client_008.champsimtrace.xz"
sh ./run_champsim.sh bimodal-next_line-no-no-no-lru-1core 50 50 client_008.champsimtrace.xz