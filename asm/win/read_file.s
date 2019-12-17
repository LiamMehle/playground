.data
in_file:
.asciz "in"
count_char
.asciz "0"

.bss
handle:
.skip 8
bytes_read:
.skip 1
byes_to_read=4096
buffer:
skip bytes_to_read




.text
.intel_syntax noprefix
.global _main
_main:
# BOOL ReadFile(
#   HANDLE       hFile,
#   LPVOID       lpBuffer,
#   DWORD        nNumberOfBytesToRead,
#   LPDWORD      lpNumberOfBytesRead,
#   LPOVERLAPPED lpOverlapped
# );
