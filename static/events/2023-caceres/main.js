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
});
