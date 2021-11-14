import Typed from 'typed.js';

const initTyped = () => {
  const element = document.querySelector('.typed-js');
  if (element) {
    new Typed('.typed-js', {
      strings: ['Drame', 'Classique', 'Comédie', 'Action', 'Romantique', 'Thriller', 'Horreur', 'Policier'],
      typeSpeed: 40,
      loop: true,
      loopCount: Infinity,
      showCursor: false
    });
  }
};

export { initTyped };
