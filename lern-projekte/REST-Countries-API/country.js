const countryName = new URLSearchParams(location.search).get('name')
const flag = document.querySelector('.country-details img')
const countryNameH1 = document.querySelector('.country-details h1')
const nativeName = document.querySelector('.native-name')
const population = document.querySelector('.population')
const region = document.querySelector('.region')
const subRegion = document.querySelector('.sub-region')
const capital = document.querySelector('.capital')
const topLevelDomain = document.querySelector('.top-level-domain')
const currencies = document.querySelector('.currencies')
const languages = document.querySelector('.languages')
const broderCountries = document.querySelector('.border-countries')

const themeChanger = document.querySelector('.theme-changer')

if (localStorage.getItem('mode') === 'dark') {
    document.body.classList.add('dark')
    themeChanger.innerHTML = '<i class="fa-solid fa-sun"></i> Light Mode'
}

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

fetch(`https://restcountries.com/v3.1/name/${countryName}?fullText=true`)
    .then((res) => res.json())
    .then(([country]) => {
        if(country.borders){
            country.borders.forEach((border)=>{
                fetch(`https://restcountries.com/v3.1/alpha/${border}`)
                .then((res)=> res.json())
                .then(([borderCountry]) => {
                    const borderCountryTag = document.createElement('a')
                    borderCountryTag.innerText = borderCountry.name.common
                    borderCountryTag.href = `country.html?name=${borderCountry.name.common}`
                    broderCountries.append(borderCountryTag)
                })
            })
        }
        flag.src = country.flags.svg
        countryNameH1.innerText = countryName
        
        if (country.name.nativeName) {
            nativeName.innerText = Object.values(country.name.nativeName)[0].common
        }
        else {
            nativeName.innerText = countryName
        }

        population.innerText = country.population.toLocaleString('en-IN')
        region.innerText = country.region
        subRegion.innerText = country.subregion ? country.subregion : '🧭 Not listed'
        
        capital.innerText = country.capital ? country.capital : '🌍 None Declared'
        
        topLevelDomain.innerText = country.tld ? country.tld.join(', ') : '🌐 No TLD assigned'

        if (country.currencies) {
            const currencyArray = []
            Object.values(country.currencies).forEach((currency) => {
                currencyArray.push(currency.name)
            })
            currencies.innerText = currencyArray.join(', ')
        } else {
            currencies.innerText = '💸 Not listed'
        }

        languages.innerText = country.languages ? Object.values(country.languages).join(', ') : '🗣️ No Language'
        


    })