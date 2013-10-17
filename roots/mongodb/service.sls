mongodb-server:
  service:
   - name: mongod
   - running
   - enable: True
   - require:
     - pkg: mongodb
