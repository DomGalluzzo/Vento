// const url= 'https://api.openweathermap.org/data/2.5/weather?q=torreon&appid=e45c25157c370587b519649a1c47f5d5&units=metric';

// const city = document.querySelector('#city');
// const date = document.querySelector('#date');
// const description = document.querySelector('#description');
// const temperature = document.querySelector('#temperature');
// const icon = document.querySelector('#icon');

// fetch(url)
//     .then(response => response.json())
//     .then((data) => {
//         console.log(data);
//         city.innerText = data.name;
//         const today = new Date();
//         const localOffset = data.timezone + today.getTimezoneOffset() * 60;
//         const localDate = new Date(2021, 04, 10);
//         const options = { weekday: 'long', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric' };
//         const formattedDate = localDate.toLocaleDateString('en-US', options);
//         date.innerText = formattedDate;
//         console.log(localDate);
//         description.innerText = data.weather[0].description;
//         temperature.innerText = `${Math.round(data.main.temp)} °C`;
//         icon.src = `http://openweathermap.org/img/wn/${data.weather[0].icon}.png`;
//     })