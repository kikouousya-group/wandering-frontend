# 基于Node.js的镜像作为构建环境
FROM node:14 AS build

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json 文件到工作目录
COPY package*.json ./

# 安装依赖
RUN npm install

# 将所有文件复制到工作目录
COPY . .

# 构建React应用程序
RUN npm run build

# 使用Nginx作为生产环境的Web服务器
FROM nginx:latest

COPY nginx.conf /etc/nginx/conf.d/default.conf
# 将构建的React应用程序复制到Nginx的默认静态文件目录
COPY --from=build /app/dist /usr/share/nginx/html

# 暴露80端口
EXPOSE 80

# 启动Nginx服务器
CMD ["nginx", "-g", "daemon off;"]