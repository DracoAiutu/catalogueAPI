const express = require('express');
const bcrypt = require('bcrypt');
const app = express();
const db = require("./db.js");


// banco de dados
(async () => {
    
    const db = require("./db");
    console.log('tabelas de posts');
    const catalogue_post_form = await db.selectCustomers();
    console.log(catalogue_post_form);
})();
app.get('/', async (req,res) => {
    const db = require("./db");
 
    console.log('tabelas de posts');
    const catalogue_post_form = await db.selectCustomers();
    return res.send(catalogue_post_form);
})

// resto
app.listen(3000, () => {

})


