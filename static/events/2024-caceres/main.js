$(document).ready(function () {
  const platinumSponsors = document.querySelectorAll('.row.sponsor-row')[0];
  if (platinumSponsors.childNodes.length > 0) {
    platinumSponsors.childNodes.forEach((element) => {
      element.style.minWidth = '400px';
    });
  }
  const goldSponsors = document.querySelectorAll('.row.sponsor-row')[1];
  if (goldSponsors.childNodes.length > 0) {
    goldSponsors.childNodes.forEach((element) => {
      element.style.minWidth = '300px';
    });
  }
  const silverSponsors = document.querySelectorAll('.row.sponsor-row')[2];
  if (silverSponsors.childNodes.length > 0) {
    silverSponsors.childNodes.forEach((element) => {
      element.style.minWidth = '225px';
    });
  }
  const bronzeSponsors = document.querySelectorAll('.row.sponsor-row')[3];
  if (bronzeSponsors.childNodes.length > 0) {
    bronzeSponsors.childNodes.forEach((element) => {
      element.style.minWidth = '200px';
    });
  }

  // Prevent showing call for papers custom links before the opening date
  const callForPapersOpen = new Date('2024-05-01');
  const callForPaperDivs = document.querySelectorAll('.call-for-papers');
  const callForPaperNavBar = document.querySelectorAll('ul.navbar-nav > li:first-child.nav-item.active');
  if (new Date() < callForPapersOpen) {
    callForPaperDivs.forEach((element) => {
      element.classList.add('hard-hidden');
    });
    callForPaperNavBar.forEach((element) => {
      element.classList.add('hard-hidden');
    });
  }
});
