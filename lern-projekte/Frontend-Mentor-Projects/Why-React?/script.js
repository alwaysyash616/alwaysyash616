const firstBasket = document.querySelector('.basket-1 span')
const secondBasket = document.querySelector('.basket-2 span')
const leftArrow = document.querySelector('.left-arrow img')
const rightArrow = document.querySelector('.right-arrow img')

const totalApples = 10

let secondBasketAppleCount = 0
let firstBasketAppleCount = totalApples - secondBasketAppleCount


firstBasket.innerText = firstBasketAppleCount
secondBasket.innerText = secondBasketAppleCount


rightArrow.addEventListener('click', ()=>{
    if(firstBasketAppleCount > 0){
        firstBasketAppleCount--
        firstBasket.innerText = firstBasketAppleCount
        secondBasketAppleCount++
        secondBasket.innerText = secondBasketAppleCount
    }
})

leftArrow.addEventListener('click', ()=>{
    if(secondBasketAppleCount > 0){
        secondBasketAppleCount--
        secondBasket.innerText=secondBasketAppleCount
        firstBasketAppleCount++
        firstBasket.innerText=firstBasketAppleCount
    }
})
