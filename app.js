var express = require('express');

var path = require('path');

const stripe = require('stripe')('sk_test_51MwEu0GCyDPnf9y0OMvmAVe006wbYxiFh5E5k9mE0tqKg5Z6zOG3W7LSacDMuzuYwozOMpU5WR7V4JOSyFGowXzy00Fy6KbrLw');

var favicon = require('serve-favicon');
var morgan = require('morgan');

// authentication modules
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var csrf = require('csrf');
var session = require('express-session');
var passport = require('passport');
var flash = require('connect-flash');

var app = express();

var database = require('./config/database');
var RunQuery = database.RunQuery;


// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
//Reformat HTML code after renders
app.locals.pretty = true;

// set up express application
    // setup favicon if needed
app.use(favicon(path.join(__dirname, 'public', '/img/ico/favicon.ico')));
    // log every request to the console
app.use(morgan('dev'));
    // csrf token init
var csrfProtection = csrf({ cookie: true });
    // get info from html forms
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
    // read cookies
app.use(cookieParser());
    // setup static directory
app.use(express.static(path.join(__dirname, 'public')));
    // setup session secret
app.use(session({ secret: 'anhpham1509', saveUninitialized: true, resave: true }));
    // pass passport for configuration
require('./config/passport')(passport);
    // init passport
app.use(passport.initialize());
    // persistent login sessions
app.use(passport.session());
    // use connect-flash for flash messages stored in session
app.use(flash());

const YOUR_DOMAIN = 'http://localhost:3000';

app.post('/create-checkout-session', async (req, res) => {
  const session = await stripe.checkout.sessions.create({
    line_items: [
        {
          price_data: {
            currency: "MXN",
            unit_amount: req.session.cartSummary.total * 100,
            product_data: {
              name: "Iocus",
            },
          },
          quantity: 1,
        },
      ],
    mode: 'payment',
    success_url: `${YOUR_DOMAIN}/checkout/order`,
    cancel_url: `${YOUR_DOMAIN}/`,
  });

  res.redirect(303, session.url);
});

app.post('/buy-directly/:ProductPrice', async (req, res) => {

      if (req.isAuthenticated()) {
        const session = await stripe.checkout.sessions.create({
          line_items: [
              {
                price_data: {
                  currency: "MXN",
                  unit_amount: req.params.ProductPrice * 100,
                  product_data: {
                    name: "Iocus",
                  },
                },
                quantity: 1,
              },
            ],
          mode: 'payment',
          success_url: `${YOUR_DOMAIN}/checkout/order`,
          cancel_url: `${YOUR_DOMAIN}/`,
        });
      
        res.redirect(303, session.url);
        
    } else {
        req.session.inCheckOut = true;
        res.redirect('/sign-in');
    } 
  });

// routes
var routes = require('./routes/routes');
var users = require('./routes/users')(app, passport);
var products = require('./routes/cart');
var wishlist = require('./routes/wishlist');
var checkout = require('./routes/checkout');
var press = require('./routes/press');
var services = require('./routes/services');
var contact = require('./routes/contact');
var admin = require('./routes/admin');
var profile = require('./routes/profile');
//require('./routes/users')(app, passport);

app.use('/', routes);
app.use('/cart', products);
app.use('/wishlist', wishlist);
app.use('/checkout', checkout);
app.use('/press', press);
app.use('/services', services);
app.use('/contact-us', contact);
app.use('/admin', admin);
app.use('/usr', profile);


// chatbot
const { Configuration, OpenAIApi } = require("openai");
// import bodyParser from "body-parser";
// import cors from "cors";
var mysql = require('mysql');

const configuration = new Configuration({
    organization: "org-xg1qINhaoUIPfutV0HqSH1wh",
    apiKey: "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"
});

const openai = new OpenAIApi(configuration);

// const app = express();
// const port = 4000;

app.use(bodyParser.json());
// app.use(cors());

app.get("/", (req, res) => {
    res.sendFile('C:/Users/j50022283/Desktop/chatbotGPT/public/index.html');
  });
  

app.post("/process", async (req, res) => {

    const text = req.body.text.toLowerCase();
    let registrado = true;


    const principalRoleAsistant = "Eres un asistente virtual de la página web de Iocus, la cual vende videojuegos en línea. Estás encargado de brindarle atención al usuario con funcionalidades de la página como registrarse, consultar videojuegos o su lista de deseos. Responderás únicamente con la siguiente información y si el usuario te hace una pregunta que no entra dentro del contexto de la información le dirás que estás diseñado para apoyarle únicamente con las funcionalidades que ya te mencioné. Esta es la información y responderás con un máximo de 30 palabras: "

    if (registrado && (text.includes("wishlist") || text.includes("lista de deseos"))){

      const queryWhislist = 'SELECT p.* FROM products p INNER JOIN wishlist w '
      + 'ON p.ProductID = w.IDvideojuego WHERE w.IDUsuario = 4';
      // const infoWishlist = await getInfoDataBase("Wishlist del usuario", queryWhislist);

      RunQuery(queryWhislist, async function (infoWishlist) {

        // console.log("infoWishlist");
        // console.log(JSON.stringify(infoWishlist));
        
        const roleAsistant = principalRoleAsistant + JSON.stringify(infoWishlist);

        console.log("roleAsistant");
        console.log(roleAsistant.length);
        console.log(roleAsistant);

        const resultChat = await callChatGPT(roleAsistant, text);
        res.json({result: resultChat});

      });

      


    }else if(!registrado && (text.includes("wishlist") || text.includes("lista de deseos"))){

      const roleAsistant = "Eres un asistente virtual de la página web de Iocus, la cual vende videojuegos en línea."
      + " Responderás con un máximo de 30 palabras, y le indicarás al usuario que no puede consultar su whislist sin antes ingresar a una"
      + " cuenta valida dentro de Iocus y lo invitarás a crear una cuenta o registrarse";

      const resultChat = await callChatGPT(roleAsistant, text);
      res.json({result: resultChat});


    }else if ((text.includes("registro") || text.includes("registrarme"))) {

      const infoSignUp = "Si un usuario se quiere registar mandale este link: http://localhost:3000";
      const roleAsistant = principalRoleAsistant + infoSignUp;

      console.log(roleAsistant.length);

      const resultChat = await callChatGPT(roleAsistant, text);
      console.log("respuesta" + resultChat);
      res.json({result: resultChat});
      
    } else {

      const queryVideojuegos = "SELECT c.CategoryName, p.ProductName, p.ProductPrice, p.UnitsInStock, p.Description, p.ManufactureYear"
      + " FROM categories c JOIN products p ON c.CategoryID = p.CategoryID";

      const queryMasDeseados = 'SELECT p.* '
      + 'FROM products p ' 
      + 'INNER JOIN ('
      + '    SELECT IDvideojuego, COUNT(IDvideojuego) AS veces_deseado'
      + '    FROM wishlist'
      + '    GROUP BY IDvideojuego'
      + '    ORDER BY veces_deseado DESC'
      + '    LIMIT 10'
      + ') w ON p.ProductID = w.IDvideojuego';
    
      // const infoVideoJuegos = await getInfoDataBase("Videojuegos con categorías", queryVideojuegos);
      RunQuery(queryVideojuegos, async function (infoVideoJuegos) {

        RunQuery(queryMasDeseados, async function (infoMasDeseados) {

          // const infoMasDeseados = await getInfoDataBase("Videojuegos más deseados", queryMasDeseados);

          // console.log("infoVideoJuegos");
          // console.log(JSON.stringify(infoVideoJuegos));
          // console.log(JSON.stringify(infoMasDeseados));

          const roleAsistant = principalRoleAsistant + JSON.stringify(infoVideoJuegos) + "\n" + JSON.stringify(infoMasDeseados);
          
          console.log("roleAsistant");
          console.log(roleAsistant.length);
          console.log(roleAsistant);

          var resultChat = await callChatGPT(roleAsistant, text);
          console.log("respuesta" + JSON.stringify(resultChat));

          res.json({result: resultChat});
        });
      
      });
      
      
    }
});


async function callChatGPT(role, prompt){
    try{
        const completion = await openai.createChatCompletion({
            model: "gpt-3.5-turbo", 
            messages: [
                {role: "system", content: role},
                {role: "user", content: `${prompt}`}
            ],
            max_tokens: 200
        })

        // console.log("chat gpt" + completion.data.choices[0].message.content);
        var answerGPT = completion.data.choices[0].message.content;
        return answerGPT;

    } catch (e){
        console.log(e);
        throw e;
    }
}


// async function getInfoDataBase(tableName, query){

//   const connection = await mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password: 'Harveylinux77+',
//     database: 'astore'
//   });

//   try {

//     const [table] = await connection.query(query);
//     const infoFormateada = tableName + `: ` + `${JSON.stringify(table)}`;
//     return infoFormateada;

//   } catch (error) {
//     console.log(error);
//     throw error;

//   } finally {
//     connection.end();
//   }

// }







// Session-persisted message middleware
app.use(function(req, res, next){
    var err = req.session.error,
        msg = req.session.notice,
        success = req.session.success;

    delete req.session.error;
    delete req.session.success;
    delete req.session.notice;

    if (err) res.locals.error = err;
    if (msg) res.locals.notice = msg;
    if (success) res.locals.success = success;

    next();
});


// catch 404 and forward to error handler
app.use(function (req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});

// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
    app.use(function (err, req, res, next) {
        res.status(err.status || 500);
        res.render('error', {
            message: err.message,
            error: err
        });
    });
}

// production error handler
// no stacktraces leaked to user
app.use(function (err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
        message: err.message,
        error: {}
    });
});


module.exports = app;


