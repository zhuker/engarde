# All
all: client server

# Client build commands
client-linux-i386: cmd/engarde-client/main.go
	GOOS=linux GOARCH=386 go build -o dist/linux/i386/engarde-client cmd/engarde-client/main.go
client-linux-amd64: cmd/engarde-client/main.go
	GOOS=linux GOARCH=amd64 go build -o dist/linux/amd64/engarde-client cmd/engarde-client/main.go
client-linux-armhf:
	GOOS=linux GOARCH=armhf go build -o dist/linux/armhf/engarde-client cmd/engarde-client/main.go
client-windows-i386: cmd/engarde-client/main.go
	GOOS=windows GOARCH=386 go build -o dist/windows/i386/engarde-client.exe cmd/engarde-client/main.go
client-windows-amd64: cmd/engarde-client/main.go
	GOOS=windows GOARCH=amd64 go build -o dist/windows/amd64/engarde-client.exe cmd/engarde-client/main.go
client-darwin-i386: cmd/engarde-client/main.go
	GOOS=darwin GOARCH=386 go build -o dist/darwin/i386/engarde-client cmd/engarde-client/main.go
client-darwin-amd64: cmd/engarde-client/main.go
	GOOS=darwin GOARCH=amd64 go build -o dist/darwin/amd64/engarde-client cmd/engarde-client/main.go

# Server build commands
server-linux-i386: cmd/engarde-server/main.go
	GOOS=linux GOARCH=386 go build -o dist/linux/i386/engarde-server cmd/engarde-server/main.go
server-linux-amd64: cmd/engarde-server/main.go
	GOOS=linux GOARCH=amd64 go build -o dist/linux/amd64/engarde-server cmd/engarde-server/main.go
server-linux-armhf: cmd/engarde-server/main.go
	GOOS=linux GOARCH=armhf go build -o dist/linux/amd64/engarde-server cmd/engarde-server/main.go
server-windows-i386: cmd/engarde-server/main.go
	GOOS=windows GOARCH=386 go build -o dist/windows/i386/engarde-server.exe cmd/engarde-server/main.go
server-windows-amd64: cmd/engarde-server/main.go
	GOOS=windows GOARCH=amd64 go build -o dist/windows/amd64/engarde-server.exe cmd/engarde-server/main.go
server-darwin-i386: cmd/engarde-server/main.go
	GOOS=darwin GOARCH=386 go build -o dist/darwin/i386/engarde-server cmd/engarde-server/main.go
server-darwin-amd64: cmd/engarde-server/main.go
	GOOS=darwin GOARCH=amd64 go build -o dist/darwin/amd64/engarde-server cmd/engarde-server/main.go

# Platform-specific builds
linux-i386: client-linux-i386 server-linux-i386
linux-amd64: client-linux-amd64 server-linux-amd64
linux-armhf: client-linux-armhf server-linux-armhf
windows-i386: client-windows-i386 server-windows-i386
windows-amd64: client-windows-amd64 server-windows-amd64
darwin-i386: client-darwin-i386 server-darwin-i386
darwin-amd64: client-darwin-amd64 server-darwin-amd64
linux: linux-i386 linux-amd64 linux-armhf
windows: windows-i386 windows-amd64
darwin: darwin-i386 darwin-amd64

# Type-specific builds
client-i386: client-linux-i386 client-windows-i386 client-darwin-i386
client-amd64: client-linux-amd64 client-windows-amd64 client-darwin-amd64
client-armhf: client-linux-armhf
server-i386: server-linux-i386 server-windows-i386 server-darwin-i386
server-amd64: server-linux-amd64 server-windows-amd64 server-darwin-amd64
server-armhf: server-linux-armhf
client: client-i386 client-amd64 client-armhf
server: server-i386 server-amd64 server-armhf
