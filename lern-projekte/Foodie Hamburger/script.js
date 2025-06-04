const hamburgerIcon = document.querySelector('.hamburger-menu-container')
const headerContent = document.querySelector('.header-content')
const navbar = document.querySelector('.header-content nav')
const closeIcon = document.querySelector('.close-icon')

hamburgerIcon.addEventListener('click',(e)=>{
    e.stopPropagation()
    headerContent.classList.add('menu-open')    
})

navbar.addEventListener('click',(e)=>{
    e.stopPropagation()
})

closeIcon.addEventListener('click',()=>{
    headerContent.classList.remove('menu-open')
})

window.addEventListener('click',()=>{
    headerContent.classList.remove('menu-open')
})