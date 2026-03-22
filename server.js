const express = require("express");
const https = require("https");

const app = express();

app.get("/", (req, res) => {
  https.get("https://raw.githubusercontent.com/DeVv-Prime/codingprime/main/ptero/run.sh", (resp) => {
    let data = "";

    resp.on("data", chunk => data += chunk);
    resp.on("end", () => {
      res.set("Content-Type", "text/plain");
      res.send(data);
    });
  });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on ${PORT}`));
