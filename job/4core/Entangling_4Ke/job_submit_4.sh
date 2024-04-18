#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running mix 27 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 27 server_026.champsimtrace.xz client_003.champsimtrace.xz server_028.champsimtrace.xz server_012.champsimtrace.xz

echo "Running mix 28 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 28 server_038.champsimtrace.xz server_017.champsimtrace.xz server_023.champsimtrace.xz server_028.champsimtrace.xz

echo "Running mix 29 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 29 server_020.champsimtrace.xz server_035.champsimtrace.xz server_023.champsimtrace.xz client_007.champsimtrace.xz

echo "Running mix 30 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 30 server_039.champsimtrace.xz spec_gobmk_002.champsimtrace.xz server_019.champsimtrace.xz server_037.champsimtrace.xz

echo "Running mix 31 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 31 server_038.champsimtrace.xz server_018.champsimtrace.xz spec_gobmk_001.champsimtrace.xz client_005.champsimtrace.xz

echo "Running mix 32 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 32 server_025.champsimtrace.xz server_016.champsimtrace.xz server_029.champsimtrace.xz spec_x264_001.champsimtrace.xz

echo "Running mix 33 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 33 server_018.champsimtrace.xz client_003.champsimtrace.xz spec_x264_001.champsimtrace.xz server_004.champsimtrace.xz

echo "Running mix 34 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 34 server_025.champsimtrace.xz server_028.champsimtrace.xz server_012.champsimtrace.xz server_004.champsimtrace.xz