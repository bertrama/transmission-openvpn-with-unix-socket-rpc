FROM haugene/transmission-openvpn:latest

COPY update-port.sh /etc/openvpn/pia/update-port.sh
RUN mkdir -m 1777 /rpc
ENV TRANSMISSION_RPC_BIND_ADDRESS=unix:/rpc/transmission.sock
ENV TRANSMISSION_RPC_SOCKET_MODE=0777
VOLUME /rpc
