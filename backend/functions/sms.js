// const accountSid = process.env.TWILIO_ACCOUNT_SID;
// const authToken = process.env.TWILIO_AUTH_TOKEN;
// const client = require('twilio')(accountSid, authToken);


// exports.sendsms = (req,res)=>{
//     try{
//         client.messages
//       .create({body: 'Hi there', from: '+12183955931', to: '+919327046282'})
//       .then(message => {
//         console.log(message.sid)
//         res.json({a:"SD"})
//       })
//       .catch(()=>{
//         res.json({a:"error"})
//       });

//     }catch(error){
//         console.log(error)
//         res.json({sf:"SDF"})
//     }
// }

