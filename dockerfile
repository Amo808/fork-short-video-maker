FROM node:18

# Установка зависимостей
RUN apt-get update && apt-get install -y \
    ffmpeg git wget cmake curl make libsdl2-dev libnss3 libdbus-1-3 \
    libatk1.0-0 libgbm-dev libasound2 libxrandr2 libxkbcommon-dev \
    libxfixes3 libxcomposite1 libxdamage1 libatk-bridge2.0-0 \
    libpango-1.0-0 libcairo2 libcups2

WORKDIR /app
COPY . .

RUN npm install

ENV PEXELS_API_KEY=your_pexels_api_key
EXPOSE 3123
CMD ["npm", "start"]
