const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.json({
        "test": "Hello world from vagrant"
    })
})

app.listen(3000);