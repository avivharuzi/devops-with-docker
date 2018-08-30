const app = require('./app');
const http = require('http');

const hostname = process.env.HOSTNAME || '127.0.0.1';
const port = process.env.PORT || 8080;

app.set('port', port);

const server = http.createServer(app);

server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}`);
});
