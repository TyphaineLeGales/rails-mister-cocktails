import Typed from 'typed.js'

function dynamicTitle(){
      new Typed("#title", {
    strings: ["Change your life", "Learn how to drink"],
    typeSpeed: 60,
    loop: true,
    fadeOut: true,
  });
}

export { dynamicTitle};
