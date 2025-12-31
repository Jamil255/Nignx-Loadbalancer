import express from 'express'
import dotenv from 'dotenv'
const app = express()

dotenv.config()

const port = process.env.PORT

app.get('/', (req, res) => {
  return res.send(`instanceId: ${process.env.INSTANCE_ID}`)
})

app.listen(port, () => {
  console.log(`Server is running on port ${port}`)
})
