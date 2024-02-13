//import from packages just like dart bt in js
const express = require('express');
const mongoose = require("mongoose");

//imports from other files
const authRouter = require("./routes/auth");

//init
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://anishkha0208:anishkha123@cluster0.hfqdhfn.mongodb.net/ecommerce";

//middleware
app.use(express.json());
app.use(authRouter);

//connections
mongoose
    .connect(DB)
    .then(() => {
        console.log("Connection Successful");
    })
    .catch((e) => {
        console.log(e);
    });


app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT}`);
});
