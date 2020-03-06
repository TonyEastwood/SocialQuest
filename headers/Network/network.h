#ifndef NETWORK_H
#define NETWORK_H

class Network {
 private:
  bool connected = false;

 public:
  Network();

  bool isConnected() const;

 private:
  void initialize();
  bool connectToServer();
};

#endif  // NETWORK_H
