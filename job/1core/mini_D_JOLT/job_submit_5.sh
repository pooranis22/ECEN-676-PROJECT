#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running server_030.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_030.champsimtrace.xz


echo "Running server_031.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_031.champsimtrace.xz


echo "Running server_032.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_032.champsimtrace.xz


echo "Running server_033.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_033.champsimtrace.xz


echo "Running server_034.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_034.champsimtrace.xz


echo "Running server_035.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_035.champsimtrace.xz


echo "Running server_036.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_036.champsimtrace.xz


echo "Running server_037.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_037.champsimtrace.xz


echo "Running server_038.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_038.champsimtrace.xz


echo "Running server_039.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 server_039.champsimtrace.xz