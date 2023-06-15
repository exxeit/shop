1. docker-compose up -d --build
2. docker ps

скопировать container_id контейнера api_db

3. docker cp dump.sql container_id:/dump.sql

4. docker-compose exec db psql -d postgres -U postgres -h localhost -f dump.sql

5. всё

если что-то меняешь: docker-compose up -d --build 
\
если просто запустить проект и ты до этого сделал билд, то: docker-compose up -d