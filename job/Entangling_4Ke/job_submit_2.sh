#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running server_001.champsimtrace.xz"
sh ./run_champsim.sh bimodal-Entangling_4Ke-no-no-no-lru-1core 50 50 server_001.champsimtrace.xz


echo "Running server_002.champsimtrace.xz"
sh ./run_champsim.sh bimodal-Entangling_4Ke-no-no-no-lru-1core 50 50 server_002.champsimtrace.xz


echo "Running server_003.champsimtrace.xz"
sh ./run_champsim.sh bimodal-Entangling_4Ke-no-no-no-lru-1core 50 50 server_003.champsimtrace.xz


echo "Running server_004.champsimtrace.xz"
sh ./run_champsim.sh bimodal-Entangling_4Ke-no-no-no-lru-1core 50 50 server_004.champsimtrace.xz


echo "Running server_005.champsimtrace.xz"
sh ./run_champsim.sh bimodal-Entangling_4Ke-no-no-no-lru-1core 50 50 server_005.champsimtrace.xz


echo "Running server_006.champsimtrace.xz"
sh ./run_champsim.sh bimodal-Entangling_4Ke-no-no-no-lru-1core 50 50 server_006.champsimtrace.xz


echo "Running server_007.champsimtrace.xz"
sh ./run_champsim.sh bimodal-Entangling_4Ke-no-no-no-lru-1core 50 50 server_007.champsimtrace.xz


echo "Running server_008.champsimtrace.xz"
sh ./run_champsim.sh bimodal-Entangling_4Ke-no-no-no-lru-1core 50 50 server_008.champsimtrace.xz

echo "Running server_009.champsimtrace.xz"
sh ./run_champsim.sh bimodal-Entangling_4Ke-no-no-no-lru-1core 50 50 server_009.champsimtrace.xz