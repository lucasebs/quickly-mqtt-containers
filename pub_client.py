#simulator device 1 for mqtt message publishing
import paho.mqtt.client as paho
import sys
import time
import random
#hostname
broker="172.20.0.2"
#port
port=1883
def on_publish(client,userdata,result):
    print("Device " + sys.argv[0] + " : Data published.")
    pass
client= paho.Client("admin")
client.on_publish = on_publish
client.connect(broker,port)
for i in range(20):
    d=random.randint(1,5)
    
 #telemetry to send 
    message="Device " + sys.argv[0] + " : Data " + str(i)
    time.sleep(d)
    
 #publish message
    ret= client.publish("/data",message)
print("Stopped...")