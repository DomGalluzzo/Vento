const initWeather = () => {
    let weatherElement = document.getElementById('weatherCard');
    if (weatherElement) {
        
        const today = new Date();
        const festivalDate = document.getElementById("festivalDate");

        //checar que el festivalDate este dentro de los proximos 30 dias, si si se llama al api
        if (festivalDate > ){

        }

        const url = `https://api.openweathermap.org/data/2.5/forecast/climate?q=torreon&appid=e45c25157c370587b519649a1c47f5d5&units=metric`;

        fetch(url)
        .then(response => response.json())
        .then((data) => {
            //console.log(data);
            const localDate = new Date(festivalDate);
            const options = { weekday: 'long', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric' };
            const formattedDate = localDate.toLocaleDateString('en-US', options);
            // date.innerText = formattedDate;
            // console.log(localDate);
            // description.innerText = data.weather[0].description;
            // temperature.innerText = `${Math.round(data.main.temp)} °C`;
            // icon.src = `http://openweathermap.org/img/wn/${data.weather[0].icon}.png`;
        })
     

        // console.log("clima");
        // const today = @contract.festival.start_date;
        // const localOffset = data.timezone + today.getTimezoneOffset() * 60;
        // const localDate = new Date(today.setUTCSeconds(localOffset));
        // const options = { weekday: 'long', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric' };
        // const formattedDate = localDate.toLocaleDateString('en-US', options);
        // date.innerText = formattedDate;
        // console.log(localDate);
    //   const map = buildMap(mapElement);
    //   const markers = JSON.parse(mapElement.dataset.markers);
    //   addMarkersToMap(map, markers);
    //   fitMapToMarkers(map, markers);
    }
  };
  
  export { initWeather };