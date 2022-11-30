+++
Title = "Location"
Type = "event"
Description = "Location for devopsdays Cáceres 2020"
+++
<style>
  h1, h2 {
    font-family: futura-bold;
    font-size: 2rem;
  }
  h3 {
    font-family: futura-bold;
    font-size: 1.5rem;
  }
  .info {
    font-size: 1.4rem;
  }
  .location.row {
    display: flex;
    flex-wrap: wrap;
    padding: 0 4px;
  }
  .location.row.two {
    margin: 5% 0;
  }
  .location.column {
    flex: 25%;
    padding: 0 4px;
  }
  .location.column.four:not(.map) {
    max-width: 20%;
  }
  .location.column.four.map {
    max-width: 530px;
  }
  .location.column.two {
    text-align: center;
  }
  .location.column.two > i {
    padding: 5%
  }
  .location.column > img {
    margin-top: 8px;
    vertical-align: middle;
    width: 100%;
  }
  .train-discount {
    margin: 2% auto;
    width: 400px;
  }
  .logo-wrapper, .discount-content {
    text-align: center;
  }
  .logo-wrapper > img {
    width: 200px;
  }
  .map-wrapper {
    margin: 1.5% auto 0;
    width: 500px;
  }
</style>
<div class="info">
  <p>The event will take place at <strong>Complejo Cultural San Francisco</strong></p>
  <p>Ronda de San Francisco, 15, 10002 Cáceres</p>
</div>

<div>
  <div class="location row one"> 
    <div class="location column four">
      <img src="https://devopsdays.cc/wp-content/uploads/2019/12/devopsdays-san-francisco-jorge-rey-41.jpg"
        alt="Complejo Cultural San Francisco"/>
      <img src="https://devopsdays.cc/wp-content/uploads/2019/12/devopsdays-san-francisco-jorge-rey-42.jpg"
        alt="Complejo Cultural San Francisco"/>
      <img src="https://devopsdays.cc/wp-content/uploads/2019/12/devopsdays-san-francisco-jorge-rey-31.jpg"
        alt="Complejo Cultural San Francisco"/>
    </div>
    <div class="location column four">
      <img src="https://devopsdays.cc/wp-content/uploads/2019/12/devopsdays-san-francisco-jorge-rey-7.jpg"
        alt="Complejo Cultural San Francisco"/>
      <img src="https://devopsdays.cc/wp-content/uploads/2019/12/devopsdays-san-francisco-jorge-rey-15.jpg"
        alt="Complejo Cultural San Francisco"/>
      <img src="https://devopsdays.cc/wp-content/uploads/2019/12/devopsdays-san-francisco-jorge-rey-34.jpg"
        alt="Complejo Cultural San Francisco"/>
    </div>
    <div class="location column four">
      <img src="https://devopsdays.cc/wp-content/uploads/2019/12/devopsdays-san-francisco-jorge-rey-10.jpg"
        alt="Complejo Cultural San Francisco"/>
      <img src="https://devopsdays.cc/wp-content/uploads/2019/12/devopsdays-san-francisco-jorge-rey-16.jpg"
        alt="Complejo Cultural San Francisco"/>
      <img src="https://devopsdays.cc/wp-content/uploads/2019/12/devopsdays-san-francisco-jorge-rey-29.jpg"
        alt="Complejo Cultural San Francisco"/>
    </div>
    <div class="location column four map">
      <div class="map-wrapper">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d647.5102114503014!2d-6.368362451721727!3d39.46718244352559!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd15dfcd81399783%3A0x574d387fc582e160!2sComplejo+Cultural+San+Francisco!5e0!3m2!1sen!2ses!4v1557252048586!5m2!1sen!2ses" width="500" height="350" frameborder="0" allowfullscreen></iframe>
      </div>
    </div>
  </div>
  <div class="location row two">
    <div class="location column two info">
      <h1>How To Get There</h1>
      <p>There are several <strong>trains</strong> and buses coming from the Spain main capital cities.</p>
      <p>If you want to come by <strong>plane</strong>, you can go to the <strong>Talavera (Badajoz) Airport</strong></p>
      <p>and then come from Badajoz to Cáceres by road using bus, train or a rented car.</p>
      <i class="fa fa-train fa-5x"></i>
      <i class="fa fa-bus fa-5x"></i>
      <i class="fa fa-plane fa-5x"></i>
    </div>
    <div class="location column two info">
      <h1>More interesting info</h1>
      <p>During your stay in the city maybe you need to make use of other services.</p>
      <p>The <strong>Cáceres City Hall</strong> gives you a complete list of interesting phone numbers,</p>
      <p>including <strong>emergencies</strong>, <strong>firefighters</strong>, <strong>police</strong>, <strong>passports</strong> etc.</p>
      <i class="fa fa-phone fa-5x"></i>
      <i class="fa fa-bed fa-5x"></i>
    </div>
  </div>
</div>

<!-- Uncomment this only if you have set the coordinates for your location in the config yaml. Get Latitude and Longitude of a Point: http://itouchmap.com/latlong.html -->
<!--{{< event_map >}}-->
