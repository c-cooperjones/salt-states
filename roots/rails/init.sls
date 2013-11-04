ruby:
  rvm.installed:
   - name: 1.9.3
   - default: True

ruby-deps:
  pkg.installed:
    - pkgs:
      - gcc 
      - make 
      - automake 
      - autoconf 
      - libcurl-devel 
      - openssl-devel 
      - zlib-devel 
      - httpd-devel 
      - apr-devel 
      - apr-util-devel 
      - mysql-devel
   
rails:
  gem.installed:
    - name: rails

passenger:
  gem.installed:
    - name: passenger

passenger-nginx:
  cmd.run:
    - name: /usr/local/rvm/gems/ruby-1.9.3-p448/bin/passenger-install-nginx-module --auto --prefix=/opt/nginx --auto-download
    - unless: test -d /opt/nginx
    - require:
      - gem: passenger
