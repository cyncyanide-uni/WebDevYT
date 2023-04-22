const express = require("express");
const app = express();
const port = 3000;
const cors = require("cors");
let data = {
  piechart: [],
  bargraphData: [],
  videoStatisics: [],
};
async function start() {
  await retreivePieChartData();
  await retreiveBarGraphData();
  await retreivelineChartData();
}
start();
app.use(cors());
app.options("*", cors());
let corsOptions = {
  origin: "*",
  credentials: true, //access-control-allow-credentials:true
  optionSuccessStatus: 200,
};
app.get("/", async (req, res) => {
  res.send(data);
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
async function retreivePieChartData() {
  const mysql = require("mysql");
  const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database: "YTdashboard",
  });

  connection.connect(() => {
    console.log("connect");
  });
  connection.query(
    `select CHANNEL.id,CHANNEL.name,
    pie_chart.male,
    pie_chart.female
  FROM channel,
    pie_chart
  WHERE channel.id = pie_chart.id`,
    (err, rows, fields) => {
      if (err) throw err;
      data.piechart = rows.map((mysqlObj, index) => {
        return Object.assign({}, mysqlObj);
      });
      console.log("The solution is: ", rows[0]);
      return data;
    }
  );
  connection.end();
}
async function retreiveBarGraphData() {
  const mysql = require("mysql");
  const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database: "YTdashboard",
  });

  connection.connect(() => {
    console.log("connect");
  });
  connection.query(
    `select monthly_gained_sub.GainedSub,
    monthly_gained_sub.month,
    channel.id
FROM monthly_gained_sub,
    channel
WHERE channel.id = monthly_gained_sub.channelidId`,
    (err, rows, fields) => {
      if (err) throw err;
      data.bargraphData = rows.map((mysqlObj, index) => {
        return Object.assign({}, mysqlObj);
      });
      console.log("The solution is: ", rows[0]);
      return data;
    }
  );
  connection.end();
}
async function retreivelineChartData() {
  const mysql = require("mysql");
  const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database: "YTdashboard",
  });

  connection.connect(() => {
    console.log("connect");
  });
  connection.query(
    `select channel.id,
    videostatistics.viewCount,
    videostatistics.publishedDate,
    videostatistics.videoTitle
FROM videostatistics,
    channel
WHERE channel.id = videostatistics.channelId`,
    (err, rows, fields) => {
      if (err) throw err;
      data.videoStatisics = rows.map((mysqlObj, index) => {
        return Object.assign({}, mysqlObj);
      });
      console.log("The solution is: ", rows[0]);
      return data;
    }
  );
  connection.end();
}
