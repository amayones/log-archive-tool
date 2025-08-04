# Log Archive Tool

A shell script to compress and archive log files with timestamp for efficient log management and storage.

## Project URL
https://roadmap.sh/projects/log-archive-tool

## Features

- **Log Compression** - Compresses log files into tar.gz format
- **Timestamped Archives** - Creates archives with date/time stamps
- **Directory Organization** - Separates archive files and log files into different directories
- **Activity Logging** - Tracks archiving operations with detailed logs
- **File Exclusion** - Automatically excludes existing archive files
- **Error Handling** - Validates directories and handles compression errors

## Usage

### Linux/WSL:
```bash
chmod +x log-archive.sh
./log-archive.sh <log_directory>
```

### Alternative:
```bash
bash log-archive.sh <log_directory>
```

## Requirements

- Linux/Unix environment or WSL on Windows
- Standard system utilities: `tar`, `date`, `mkdir`
- Read/write permissions for target directories

## Sample Output

```
Logs successfully archived to: ./archives/log_archive_20250804_143022.tar.gz
```

## Directory Structure

After running the script:
```
project-root/
├── archives/              # Compressed log files
│   └── log_archive_*.tar.gz
├── logs/                  # Activity logs
│   └── archive.log
└── log-archive.sh
```

## Installation

1. Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/log-archive-tool.git
cd log-archive-tool
```

2. Make executable and run:
```bash
chmod +x log-archive.sh
./log-archive.sh your-log-directory
```

## Examples

```bash
# Archive logs from 'app-logs' directory
./log-archive.sh app-logs

# Archive system logs
./log-archive.sh /var/log

# Archive logs from relative path
./log-archive.sh ../project-logs
```