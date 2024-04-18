#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running server_020.champsimtrace.xz"
sh ./run_champsim.sh bimodal-no-no-no-no-lru-1core 50 50 server_020.champsimtrace.xz


echo "Running server_021.champsimtrace.xz"
sh ./run_champsim.sh bimodal-no-no-no-no-lru-1core 50 50 server_021.champsimtrace.xz


echo "Running server_022.champsimtrace.xz"
sh ./run_champsim.sh bimodal-no-no-no-no-lru-1core 50 50 server_022.champsimtrace.xz


echo "Running server_023.champsimtrace.xz"
sh ./run_champsim.sh bimodal-no-no-no-no-lru-1core 50 50 server_023.champsimtrace.xz


echo "Running server_024.champsimtrace.xz"
sh ./run_champsim.sh bimodal-no-no-no-no-lru-1core 50 50 server_024.champsimtrace.xz


echo "Running server_025.champsimtrace.xz"
sh ./run_champsim.sh bimodal-no-no-no-no-lru-1core 50 50 server_025.champsimtrace.xz


echo "Running server_026.champsimtrace.xz"
sh ./run_champsim.sh bimodal-no-no-no-no-lru-1core 50 50 server_026.champsimtrace.xz


echo "Running server_027.champsimtrace.xz"
sh ./run_champsim.sh bimodal-no-no-no-no-lru-1core 50 50 server_027.champsimtrace.xz

echo "Running server_028.champsimtrace.xz"
sh ./run_champsim.sh bimodal-no-no-no-no-lru-1core 50 50 server_028.champsimtrace.xz


echo "Running server_029.champsimtrace.xz"
sh ./run_champsim.sh bimodal-no-no-no-no-lru-1core 50 50 server_029.champsimtrace.xz


