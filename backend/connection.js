const mysql=require('mysql')

const db = mysql.createConnection({
    host     : 'postgresdb',
    user     : 'root', 
    password : 'googleuser',
    database : 'server',
    port: 5432
  }); 
    
  db.connect( (err) =>{
    try{
      if(!err){
        console.log('database connected')
      } 
      else{
        throw err
      }
    }catch(error){
      console.log("EXCEPTION OCCURED")
      console.log(error)
    }
  })

  module.exports=db