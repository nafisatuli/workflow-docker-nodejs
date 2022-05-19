const express = require("express");

const app = express();

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
    res.send("<h3>Hello World!</h3>")
})

app.listen(PORT, () => {
    console.log(`listening on port ${PORT}`);
})