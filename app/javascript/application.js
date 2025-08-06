import "@hotwired/turbo-rails"
import "controllers"


document.addEventListener('turbo:load', () => { 
  const hamburgerButton = document.querySelector('.hamburger-menu');
  const navbarLinks = document.getElementById('navbarLinks');

  if (hamburgerButton && navbarLinks) {
    hamburgerButton.addEventListener('click', () => {
      navbarLinks.classList.toggle('active');
      hamburgerButton.classList.toggle('active'); // Para a animação do hambúrguer
    });

    // Fechar o menu ao clicar em um link (útil em mobile)
    navbarLinks.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        if (navbarLinks.classList.contains('active')) {
          navbarLinks.classList.remove('active');
          hamburgerButton.classList.remove('active');
        }
      });
    });
  }
});