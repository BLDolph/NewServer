FROM 3.10.20-slim-bookworm

WORKDIR /usr/src/NewServer

COPY . .
RUN pip install -r requirments.txt

EXPOSE 8085
CMD ["waitress-serve", "--host", "0.0.0.0", "--port", "8085", "app:app"]