OPS home assignment

2. We can demonstrate the availability of the servers by accessing the browser with the ELB DNS name.
When accessing the web page, we will immediately be redirected to the default Nginx index.html page.

3. We can prove that both Nginx servers are getting traffic by accessing the monitoring tab of the specific server and seeing the CPU time.
Another way of proving that is by creating a group on CloudWatch and monitoring the traffic from there.

4. Availability improvements - 
We can improve the availability by adding more availability zones to our system.
By implementing this, we ensure resiliency, lower latency, and a fault tolerance system. 