# 使用轻量级的Nginx镜像作为基础
FROM nginx:alpine

# 删除默认的Nginx配置
RUN rm /etc/nginx/conf.d/default.conf

# 将自定义Nginx配置复制到容器中
COPY nginx.conf /etc/nginx/conf.d

# 将静态文件复制到Nginx的默认目录
COPY index.html /usr/share/nginx/html

# 暴露80端口
EXPOSE 80

# 启动Nginx
CMD ["nginx", "-g", "daemon off;"]
