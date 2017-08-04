FROM convox/rails

COPY Gemfile      /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

COPY Rakefile     /app/Rakefile
COPY config       /app/config
COPY public       /app/public
COPY app/assets   /app/app/assets

RUN rake assets:precompile