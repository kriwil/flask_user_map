cd /home/web/
git clone http://github.com/timlinux/user_map.git
cd user_map
virtualenv venv
venv/bin/pip install -r requirements.txt

# We use our local config files rather than
cp docker/nginx.default /etc/nginx/sites-enabled/default
cp docker/supervisord-nginx.conf /etc/supervisor/conf.d/
cp docker/supervisord-uwsgi.conf /etc/supervisor/conf.d/

echo "daemon off;" >> /etc/nginx/nginx.conf
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
