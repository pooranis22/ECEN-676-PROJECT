#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running mix 18 for multicore"
sh ./run_4core.sh bimodal-next_line-no-no-no-lru-4core 50 50 18 server_002.champsimtrace.xz server_011.champsimtrace.xz server_026.champsimtrace.xz server_015.champsimtrace.xz

echo "Running mix 19 for multicore"
sh ./run_4core.sh bimodal-next_line-no-no-no-lru-4core 50 50 19 server_022.champsimtrace.xz server_023.champsimtrace.xz server_014.champsimtrace.xz server_037.champsimtrace.xz

echo "Running mix 20 for multicore"
sh ./run_4core.sh bimodal-next_line-no-no-no-lru-4core 50 50 20 server_011.champsimtrace.xz server_035.champsimtrace.xz spec_gobmk_001.champsimtrace.xz client_003.champsimtrace.xz

echo "Running mix 21 for multicore"
sh ./run_4core.sh bimodal-next_line-no-no-no-lru-4core 50 50 21 server_031.champsimtrace.xz spec_gcc_002.champsimtrace.xz spec_gcc_003.champsimtrace.xz server_030.champsimtrace.xz

echo "Running mix 22 for multicore"
sh ./run_4core.sh bimodal-next_line-no-no-no-lru-4core 50 50 22 spec_perlbench_001.champsimtrace.xz spec_gcc_001.champsimtrace.xz client_005.champsimtrace.xz spec_gcc_003.champsimtrace.xz

echo "Running mix 23 for multicore"
sh ./run_4core.sh bimodal-next_line-no-no-no-lru-4core 50 50 23 server_034.champsimtrace.xz server_003.champsimtrace.xz spec_gobmk_001.champsimtrace.xz server_004.champsimtrace.xz

echo "Running mix 24 for multicore"
sh ./run_4core.sh bimodal-next_line-no-no-no-lru-4core 50 50 24 server_001.champsimtrace.xz server_036.champsimtrace.xz client_005.champsimtrace.xz client_002.champsimtrace.xz

echo "Running mix 25 for multicore"
sh ./run_4core.sh bimodal-next_line-no-no-no-lru-4core 50 50 25 server_039.champsimtrace.xz client_008.champsimtrace.xz server_017.champsimtrace.xz server_010.champsimtrace.xz

echo "Running mix 26 for multicore"
sh ./run_4core.sh bimodal-next_line-no-no-no-lru-4core 50 50 26 server_020.champsimtrace.xz server_038.champsimtrace.xz server_018.champsimtrace.xz spec_gobmk_001.champsimtrace.xz