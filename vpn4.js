require('dotenv').config();
const exec =  require('child_process').exec;

const vpn = require('cisco-vpn')({
    exe: '/opt/cisco/anyconnect/bin/vpn',
    server: process.env.VPN4_ADDRESS,
    username: process.env.VPN_USER,
    password: process.env.VPN4_PW
});

vpn.connect()
    .then(() => {
        console.log(" ");
        console.log(" ");
        console.log(" ");
        console.log('connected!');
        exec("kill -9 $$");
});
