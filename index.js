//Imports
const express = require('express');
const morgan = require('morgan');
app.use(morgan('dev'));
require('dotenv').config;
const bodyParser = require("body-parser");
const app = express();
//Imports close


//Middlewares
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(morgan("dev"));
//Middlewares close


//Routes
app.use("/vehiculos", require("./routes/vehiculos"));
app.use('/linea', require('./routes/tipo_linea'));
app.use('/marca', require('./routes/tipo_marca'));
//Routes close


app.set('port', process.env.PORT);
app.listen(app.get('port'), () => {
    console.log(`Servidor corriendo en el puerto ${app.get('port')}`);
});