const countriesContainer = document.querySelector('.countries-container')
const filterByRegion = document.querySelector('.filter-by-region')
const searchContainer = document.querySelector('.search-container')
const themeChanger = document.querySelector('.theme-changer')

let allCountriesData
if (localStorage.getItem('mode') === 'dark') {
    document.body.classList.add('dark')
    themeChanger.innerHTML = '<i class="fa-solid fa-sun"></i> Light Mode'
}

fetch('https://restcountries.com/v3.1/all')
    .then((res) => res.json())
    .then((data) => {
        renderCountries(data)
        allCountriesData = data
    })


filterByRegion.addEventListener('change', (e) => {
    fetch(`https://restcountries.com/v3.1/region/${e.target.value}`)
        .then((res) => res.json())
        .then((data)=>{
            renderCountries(data)
            allCountriesData = data
        })
})

searchContainer.addEventListener('input', (e) => {
    renderCountries(allCountriesData.filter((country) => country.name.common.toLowerCase().includes(e.target.value.toLowerCase())))
})

themeChanger.addEventListener('click', () => {
    document.body.classList.toggle('dark')
    if (document.body.classList.contains('dark')) {
        localStorage.setItem('mode', 'dark')
        themeChanger.innerHTML = '<i class="fa-solid fa-sun"></i> Light Mode'
    }
    else {
        localStorage.removeItem('mode')
        themeChanger.innerHTML = '<i class="fa-regular fa-moon"></i> Dark Mode'
    }

})


function renderCountries(data) {
    countriesContainer.innerHTML = ''
    data.forEach((country) => {
        // console.log(country.name.common);

        const countryCard = document.createElement('a')
        countryCard.classList.add('country-card')
        countryCard.href = `./country.html?name=${country.name.common}`
        countryCard.innerHTML = `<img src="${country.flags.svg}" alt="${country.name.common} flag">
                        <div class="card-text">
                            <h3 class="card-title">${country.name.common}</h3>
                            <p><b>Population: </b>${country.population.toLocaleString('en-IN')}</p>
                            <p><b>Region: </b>${country.region}</p>
                            <p><b>Capital: </b>${country.capital?.[0]}</p>
                        </div>`
        countriesContainer.append(countryCard)
    });
}



