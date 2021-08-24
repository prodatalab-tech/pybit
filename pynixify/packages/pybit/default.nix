# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ buildPythonPackage, fetchPypi, lib, requests, websocket_client, websockets }:

buildPythonPackage rec {
  pname = "pybit";
  version = "1.2.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "12iglppx9ycw23wkr81b0g55kbv4327x16z0dwg3k376vqi4xyzn";
  };

  propagatedBuildInputs = [ requests websocket_client websockets ];

  # TODO FIXME
  doCheck = false;

  meta = with lib; {
    description = "Python3 Bybit HTTP/WebSocket API Connector";
    homepage = "https://github.com/verata-veritatis/pybit";
  };
}
