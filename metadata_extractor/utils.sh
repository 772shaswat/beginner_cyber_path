#!/bash/bin

log() {
	echo "[INFO $(date +"%Y-%m-%d %H:%M:%S") - $1"
}

validate_file() {
	if [ ! -f "$1" ]; then
		echo "[ERROR] File not found: $1"
		return 1
	fi
	return 0
}

