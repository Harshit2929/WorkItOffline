const mysql=require('mysql')

const db = mysql.createConnection({
    host     : 'localhost',
    user     : 'root', 
    password : process.env.DATABSE_PASSWORD,
    database : 'server_database'
  }); 
    
  db.connect( (err) =>{
    if(!err){
      console.log('database connected')
    } 
    else{
      throw err
    }
  })

  module.exports=db