package main

import (
	"fmt"
	"os"

	"github.com/dweomer/hello-version/version"
)

func main() {
	fmt.Fprintf(os.Stdout, "Hello %v, %v!", version.Release, version.Revision)
	fmt.Fprintln(os.Stdout)
}
