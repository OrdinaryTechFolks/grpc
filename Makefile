budgetme-build-proto:
	@protoc -I proto/budgetme proto/budgetme/*.proto --gofast_out=plugins=grpc:go/budgetme --dart_out=grpc:lib/budgetme