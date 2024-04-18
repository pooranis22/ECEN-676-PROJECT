#!/bin/bash
#SBATCH --job-name=serial_job_test   # Job name
#SBATCH --mail-type=END,FAIL         # Mail Events (NONE,BEGIN,FAIL,END,ALL)
#SBATCH --mail-user=pan82396610@tamu.edu   # Replace with your email address
#SBATCH --ntasks=1                   # Run on a single CPU
#SBATCH --time=12:00:00              # Time limit hh:mm:ss
#SBATCH --output=serial_test_%j.log  # Standard output and error log
#SBATCH --qos=grad                   # Change to ugrad for undergrads
#SBATCH --partition=non-gpu          # This job does not use a GPU

echo "Running mix 43 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 43 server_002.champsimtrace.xz spec_gobmk_002.champsimtrace.xz server_038.champsimtrace.xz server_010.champsimtrace.xz

echo "Running mix 44 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 44 client_004.champsimtrace.xz server_018.champsimtrace.xz server_019.champsimtrace.xz server_029.champsimtrace.xz

echo "Running mix 45 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 45 client_008.champsimtrace.xz spec_perlbench_001.champsimtrace.xz server_028.champsimtrace.xz client_006.champsimtrace.xz

echo "Running mix 46 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 46 server_020.champsimtrace.xz server_009.champsimtrace.xz spec_gobmk_001.champsimtrace.xz client_003.champsimtrace.xz

echo "Running mix 47 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 47 server_009.champsimtrace.xz server_026.champsimtrace.xz server_015.champsimtrace.xz server_004.champsimtrace.xz

echo "Running mix 48 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 48 server_002.champsimtrace.xz spec_gobmk_002.champsimtrace.xz server_019.champsimtrace.xz client_001.champsimtrace.xz

echo "Running mix 49 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 49 server_035.champsimtrace.xz server_023.champsimtrace.xz server_030.champsimtrace.xz client_006.champsimtrace.xz

echo "Running mix 50 for multicore"
sh ./run_4core.sh bimodal-no-no-no-no-lru-4core 50 50 50 server_032.champsimtrace.xz server_011.champsimtrace.xz server_029.champsimtrace.xz client_006.champsimtrace.xz