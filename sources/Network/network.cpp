#include "../../headers/Network/network.h"

bool Network::isConnected() const { return connected; }

bool Network::connectToServer() {
  // connected = ConnectToServer; [CHANGE]
  return connected;
}

Network::Network() {}

void Network::initialize() { connectToServer(); }
