budgetme-build-proto:
	@protoc -I budgetme/proto budgetme/proto/*.proto --gofast_out=plugins=grpc:budgetme/proto --dart_out=grpc:budgetme/proto