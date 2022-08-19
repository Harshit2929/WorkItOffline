const mysql=require('mysql')

const db = mysql.createConnection({
    host     : 'postgresdb',
    user     : 'root', 
    password : 'googleuser',
    database : 'server',
    port: 5432
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