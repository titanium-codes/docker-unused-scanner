FROM composer

RUN composer global require -a --prefer-stable insolita/unused-scanner
RUN printf "#!/usr/bin/env bash\nexec $COMPOSER_HOME/vendor/bin/unused_scanner \$@" > /docker-entrypoint.sh
WORKDIR /app
