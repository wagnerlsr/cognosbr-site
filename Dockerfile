# Use uma imagem base leve do Nginx
FROM nginx:alpine

# Remova a configuração padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copie a configuração do Nginx para o container
COPY nginx.conf /etc/nginx/conf.d/

# Copie os arquivos da landing page para a pasta do Nginx
COPY . /usr/share/nginx/html

# Exponha a porta 80
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
