const app = require('./app');

const hostname = process.env.HOSTNAME || '127.0.0.1';
const port = process.env.PORT || 8080;

app.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}`);
});
