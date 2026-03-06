(async () => {
    const db = require("./db")
    const prod = await db.selectProdutos()
    console.log(prod)
})()