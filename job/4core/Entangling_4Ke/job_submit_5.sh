#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running mix 35 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 35 server_036.champsimtrace.xz client_005.champsimtrace.xz server_014.champsimtrace.xz server_037.champsimtrace.xz

echo "Running mix 36 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 36 server_001.champsimtrace.xz server_036.champsimtrace.xz server_026.champsimtrace.xz spec_gcc_003.champsimtrace.xz

echo "Running mix 37 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 37 server_022.champsimtrace.xz server_009.champsimtrace.xz client_005.champsimtrace.xz spec_gcc_003.champsimtrace.xz

echo "Running mix 38 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 38 server_032.champsimtrace.xz server_038.champsimtrace.xz server_028.champsimtrace.xz spec_gcc_003.champsimtrace.xz

echo "Running mix 39 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 39 server_024.champsimtrace.xz server_001.champsimtrace.xz server_035.champsimtrace.xz client_007.champsimtrace.xz

echo "Running mix 40 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 40 client_008.champsimtrace.xz spec_gobmk_002.champsimtrace.xz client_007.champsimtrace.xz spec_x264_001.champsimtrace.xz

echo "Running mix 41 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 41 server_022.champsimtrace.xz server_025.champsimtrace.xz client_007.champsimtrace.xz server_010.champsimtrace.xz

echo "Running mix 42 for multicore"
sh ./run_4core.sh bimodal-Entangling_4Ke-no-no-no-lru-4core 50 50 42 server_002.champsimtrace.xz server_013.champsimtrace.xz server_036.champsimtrace.xz server_012.champsimtrace.xz