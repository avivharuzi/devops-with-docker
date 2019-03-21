const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const helmet = require('helmet');
const cors = require('cors');

mongoose.Promise = require('bluebird');
mongoose.connect('mongodb://mongo:27017/web', { useNewUrlParser: true });

const app = express();

app.use(helmet());
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

module.exports = app;
