echo "Building and publishing the main image to the private registry..."
docker buildx build \
        --platform linux/amd64 \
        --provenance=false \
        --sbom=false \
        -t my.private-registry.lan:5000/dana-unmanaged-microservice-remote:latest \
        --push \
        -f Dockerfile.remote .

echo "Veryfying deploied image..."
curl -X GET http://my.private-registry.lan:5000/v2/_catalog