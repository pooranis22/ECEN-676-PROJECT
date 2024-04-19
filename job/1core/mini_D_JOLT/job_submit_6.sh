#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running spec_gcc_001.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 spec_gcc_001.champsimtrace.xz

echo "Running spec_gcc_002.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 spec_gcc_002.champsimtrace.xz

echo "Running spec_gcc_003.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 spec_gcc_003.champsimtrace.xz

echo "Running spec_gobmk_001.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 spec_gobmk_001.champsimtrace.xz

echo "Running spec_gobmk_002.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 spec_gobmk_002.champsimtrace.xz

echo "Running spec_perlbench_001.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 spec_perlbench_001.champsimtrace.xz

echo "Running spec_x264_001.champsimtrace.xz"
sh ./run_champsim.sh bimodal-mini_D_JOLT-no-no-no-lru-1core 50 50 spec_x264_001.champsimtrace.xz
