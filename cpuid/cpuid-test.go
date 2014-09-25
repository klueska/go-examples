package main

import (
	"fmt"
	"unsafe"
	"github.com/klueska/go-examples/cpuid/lib"
)

func main() {
	_, rbx, rcx, rdx := lib.Cpuid(0, 0)

	byte_array := make([]byte, 12)
	*((*uintptr)(unsafe.Pointer(&byte_array[0]))) = rbx
	*((*uintptr)(unsafe.Pointer(&byte_array[4]))) = rdx
	*((*uintptr)(unsafe.Pointer(&byte_array[8]))) = rcx
	fmt.Printf("CPU manufacturer ID: %s\n", string(byte_array))
}

