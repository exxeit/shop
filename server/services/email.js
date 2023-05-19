const nodemailer = require('nodemailer');

let transporter = nodemailer.createTransport({
    host: "smtp.zoho.eu",
    secure: true,
    port: 465,
    auth: {
        user: "alexey.balahanov@innowise-group.com",
        pass: "zWMs8FpWaZ!Qqwr",
    },
});

const createMailOptions = (email, token) => {
    return {
        from: "shopmakeyexample@zohomail.eu", // sender address
        to: email,
        subject: "Ссылка восстановления пароля.", // Subject line
        html: `<p>Ссылка на восстановление пароля: <a href="http://localhost:3000/reset_password?token=${token}">Восстановить пароль</a></p>`, // plain text body
    };
}

const sendMail = async (email, token) => {
    const mailOptions = createMailOptions(email, token)
    await transporter.sendMail(mailOptions, function(err, info) {
        if (err) {
            console.log("Send mail error: ", err)
        }
    })
}

module.exports = sendMail