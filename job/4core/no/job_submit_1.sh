#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running mix 1 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 1 server_032.champsimtrace.xz server_039.champsimtrace.xz server_001.champsimtrace.xz client_002.champsimtrace.xz

echo "Running mix 2 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 2 spec_gobmk_002.champsimtrace.xz server_035.champsimtrace.xz spec_gcc_003.champsimtrace.xz server_029.champsimtrace.xz

echo "Running mix 3 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 3 server_031.champsimtrace.xz server_022.champsimtrace.xz server_019.champsimtrace.xz server_028.champsimtrace.xz

echo "Running mix 4 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 4 server_035.champsimtrace.xz server_014.champsimtrace.xz server_029.champsimtrace.xz spec_x264_001.champsimtrace.xz

echo "Running mix 5 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 5 client_005.champsimtrace.xz client_001.champsimtrace.xz client_003.champsimtrace.xz client_002.champsimtrace.xz

echo "Running mix 6 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 6 server_002.champsimtrace.xz server_024.champsimtrace.xz client_003.champsimtrace.xz spec_gcc_003.champsimtrace.xz

echo "Running mix 7 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 7 server_009.champsimtrace.xz server_028.champsimtrace.xz server_027.champsimtrace.xz client_006.champsimtrace.xz

echo "Running mix 8 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 8 spec_perlbench_001.champsimtrace.xz server_022.champsimtrace.xz server_035.champsimtrace.xz server_014.champsimtrace.xz