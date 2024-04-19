#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running server_010.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_010.champsimtrace.xz


echo "Running server_011.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_011.champsimtrace.xz


echo "Running server_012.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_012.champsimtrace.xz


echo "Running server_013.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_013.champsimtrace.xz


echo "Running server_014.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_014.champsimtrace.xz

echo "Running server_015.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_015.champsimtrace.xz


echo "Running server_016.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_016.champsimtrace.xz


echo "Running server_017.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_017.champsimtrace.xz


echo "Running server_018.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_018.champsimtrace.xz


echo "Running server_019.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_019.champsimtrace.xz


