const http = require('http');
const port = 8080;

const requestHandler = (req, res) => {
  res.end('Hello, World!');
}

const server = http.createServer(requestHandler);

server.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
