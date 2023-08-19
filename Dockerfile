# 使用一个基础镜像
FROM node:14-alpine

# 设置工作目录
WORKDIR /app

# 将package.json和package-lock.json拷贝到工作目录
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 将整个项目拷贝到工作目录
COPY . .

# 构建前端项目
RUN npm run build

# 暴露容器端口
EXPOSE 3000

# 启动前端项目
CMD ["npm", "run", "start"]