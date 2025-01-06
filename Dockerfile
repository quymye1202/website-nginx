# Sử dụng image chính thức của NGINX
FROM nginx:latest

# Sao chép nội dung website vào thư mục gốc của NGINX
COPY ./html /usr/share/nginx/html

# Mở cổng 80 để truy cập vào ứng dụng
EXPOSE 80

# Khởi động NGINX khi container bắt đầu chạy
CMD ["nginx", "-g", "daemon off;"]
