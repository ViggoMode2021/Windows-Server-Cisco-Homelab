
import socket

Socket = socket.socket()
print("Socket successfully created")

port = 12109

Socket.bind(('', port))
print("socket binded to %s" %(port))

# put the socket into listening mode
Socket.listen(5)
print("socket is listening")

while True:

# Establish connection with client.
  c, addr = Socket.accept()
  print('Got connection from', addr )

  # send a thank you message to the client. encoding to send byte type.
  c.send('Thank you for connecting'.encode())

  # Close the connection with the client
  c.close()

  # Breaking once connection closed
  break
