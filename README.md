# Deployment Kubernetes

## Tạo image cho DB
```
cd db/
docker build -t db-k8s:v1 .
docker tag db-k8s:v1 <your-dockerhub-username>/db-k8s:v1
docker push <your-dockerhub-username>/db-k8s:v1
```

## Tạo image cho web
```
cd ../playground/
docker build -t web-k8s:v1 .
docker tag web-k8s:v1 <your-dockerhub-username>/web-k8s:v1
docker push <your-dockerhub-username>/web-k8s:v1
```

## Triển khai trên Kubernetes
Sau khi bạn tạo image xong, nếu muốn chạy trên IMAGE mình mới tạo thì hãy đổi lại tên image trong file YAML (chỗ ```image: chuongltv/db-k8s:v1 và image: chuongltv/web-k8s:v1``` cho cả 2 file db-deployment.yaml và web-deployment.yaml, nếu không đổi trong file YAML mà chạy thì sẽ lấy image của tôi để chạy.
```
cd ..
kubectl apply -f db-deployment.yaml
kubectl apply -f web-deployment.yaml
```

## Truy cập website sau khai triển khai Kubernetes
Vì tôi không có Kubernetes cluster thực tế như GKE, AKS. Nên tôi dùng Minikube để gọi web và truy cập vào.

```
minikube service php-service --url
```
