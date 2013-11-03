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
    
passenger-repo:
  pkg.installed:
    - source: http://passenger.stealthymonkeys.com/rhel/6/passenger-release.noarch.rpm
    
nginx-passenger:
  pkg:
   - insatalled
   - require:
     - pkg: nginx-passenger    
