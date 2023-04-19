const express = require("express");

const PORT = process.env.PORT || 3000;
const HOST = "0.0.0.0";

const app = express();

app.use(express.json());

app.get("/", (_req, res) => {
	res.json({ message: "Hello Guys!" });
});

app.listen(PORT, HOST);
