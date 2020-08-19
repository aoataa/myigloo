import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Spend a night in an amazing igloo around the world."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
