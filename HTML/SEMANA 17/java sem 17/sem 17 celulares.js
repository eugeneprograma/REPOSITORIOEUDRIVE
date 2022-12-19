ScrollReveal({ reset: true });
      window.sr = ScrollReveal();
     // optios reveal
      sr.reveal('.navbar', {
        duration: 2000,
        origin: 'bottom'
      });
  
      sr.reveal('.header-content-left', {
        duration: 2000,
        origin: 'top',
        distance: '300px'
      });
  
      sr.reveal('.header-content-right', {
        duration: 2000,
        origin: 'right',
        distance: '300px'
      });
  
      sr.reveal('.header-btn', {
        duration: 2000,
        delay: 1000, 
        origin: 'top',
        distance: '300px'
      });
  
      sr.reveal('#testimonial', {
        duration: 2000,
        origin: 'left',
        distance: '300px',
        delay:1000
        });

      sr.reveal('#info-one',{
        duration: 2000,
        origin: "bottom",
        distance: "100px",
        easing: "cubic-bezier(.37,.01,.74,1)",
        opacity: 0.3,
        scale: 0.5
      });

      sr.reveal('#info-two',{
        duration: 3000,
        origin: "left",
        distance: "300px",
        easing: "ease-in-out"
      });

	sr.reveal("#contact", {
      delay: 500,
      duration: 2000,
      rotate: {
        x: 20,
        z: 20
      }
      });

      document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
          e.preventDefault();
  
          document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
          });
        });
      });

