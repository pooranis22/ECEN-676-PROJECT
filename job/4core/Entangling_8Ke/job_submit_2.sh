#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running mix 9 for multicore"
sh ./run_4core.sh bimodal-Entangling_8Ke-no-no-no-lru-4core 50 50 9 server_002.champsimtrace.xz server_009.champsimtrace.xz client_007.champsimtrace.xz server_030.champsimtrace.xz

echo "Running mix 10 for multicore"
sh ./run_4core.sh bimodal-Entangling_8Ke-no-no-no-lru-4core 50 50 10 client_008.champsimtrace.xz server_003.champsimtrace.xz server_025.champsimtrace.xz server_004.champsimtrace.xz

echo "Running mix 11 for multicore"
sh ./run_4core.sh bimodal-Entangling_8Ke-no-no-no-lru-4core 50 50 11 client_008.champsimtrace.xz server_001.champsimtrace.xz server_038.champsimtrace.xz spec_gcc_001.champsimtrace.xz

echo "Running mix 12 for multicore"
sh ./run_4core.sh bimodal-Entangling_8Ke-no-no-no-lru-4core 50 50 12 server_032.champsimtrace.xz server_039.champsimtrace.xz server_020.champsimtrace.xz server_010.champsimtrace.xz

echo "Running mix 13 for multicore"
sh ./run_4core.sh bimodal-Entangling_8Ke-no-no-no-lru-4core 50 50 13 server_038.champsimtrace.xz server_035.champsimtrace.xz server_023.champsimtrace.xz client_001.champsimtrace.xz

echo "Running mix 14 for multicore"
sh ./run_4core.sh bimodal-Entangling_8Ke-no-no-no-lru-4core 50 50 14 spec_gobmk_002.champsimtrace.xz server_035.champsimtrace.xz client_001.champsimtrace.xz client_006.champsimtrace.xz

echo "Running mix 15 for multicore"
sh ./run_4core.sh bimodal-Entangling_8Ke-no-no-no-lru-4core 50 50 15 server_017.champsimtrace.xz server_003.champsimtrace.xz server_035.champsimtrace.xz client_006.champsimtrace.xz

echo "Running mix 16 for multicore"
sh ./run_4core.sh bimodal-Entangling_8Ke-no-no-no-lru-4core 50 50 16 server_020.champsimtrace.xz server_037.champsimtrace.xz server_012.champsimtrace.xz spec_gcc_003.champsimtrace.xz

echo "Running mix 17 for multicore"
sh ./run_4core.sh bimodal-Entangling_8Ke-no-no-no-lru-4core 50 50 17 server_035.champsimtrace.xz server_036.champsimtrace.xz spec_gcc_002.champsimtrace.xz server_016.champsimtrace.xz