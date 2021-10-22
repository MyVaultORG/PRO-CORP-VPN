require('dotenv').config();
const exec =  require('child_process').exec;

const vpn = require('cisco-vpn')({
    exe: '/opt/cisco/anyconnect/bin/vpn',
    server: process.env.VPN3_ADDRESS,
    username: process.env.VPN_USER,
    password: process.env.VPN3_PW
});

vpn.disconnect()
    .then(() => {
        console.log(" ");
        console.log(" ");
        console.log(" ");
        console.log('Disconnected from VPN3\'s VPN!');
        exec("kill -9 $$");
});
