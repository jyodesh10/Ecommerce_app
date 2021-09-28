import express from "express"

const app = express();

app.get("/" , (req,res) => {
    res.send("get in new appp");
});

app.listen(8080, () => {
    console.log("server is running")
})