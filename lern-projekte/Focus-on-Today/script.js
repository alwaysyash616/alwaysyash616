const CheckBoxList = document.querySelectorAll(".custom-checkbox")
const inputFields = document.querySelectorAll(".goal-input")
const errorLabel = document.querySelector('.error-label')
const progressLabel = document.querySelector('.progress-label')
const progressBar = document.querySelector('.progress-bar')
const progressValue = document.querySelector('.progress-value')

const allQuotes = [
    'Raise the bar by completing your goals!',
    'Well begun is half done!',
    'Just a setp away, keep going!',
    'Whoa! You just completed all the goals, time for chill :D'
]

const allGoals = JSON.parse(localStorage.getItem('allGoals')) || {}
let completedGoalsCount = Object.values(allGoals).filter((goal) => goal.completed).length
progressValue.style.width = `${(100 / inputFields.length) * completedGoalsCount}%`
progressValue.firstElementChild.innerText = `${completedGoalsCount}/${inputFields.length} completed`
progressLabel.innerText = allQuotes[completedGoalsCount]

CheckBoxList.forEach((checkbox) => {
    checkbox.addEventListener('click', (e) => {
        const allFieldsFilled = [...inputFields].every((input) => {
            return input.value
        })
        if (allFieldsFilled) {
            checkbox.parentElement.classList.toggle('completed')

            const inputId = checkbox.nextElementSibling.id
            allGoals[inputId].completed = !allGoals[inputId].completed
            completedGoalsCount = Object.values(allGoals).filter((goal) => goal.completed).length
            progressValue.style.width = `${(100 / inputFields.length) * completedGoalsCount}%`
            progressValue.firstElementChild.innerText = `${completedGoalsCount}/${inputFields.length} completed`
            progressLabel.innerText = allQuotes[completedGoalsCount]
            localStorage.setItem('allGoals', JSON.stringify(allGoals))
        }
        else {
            // errorLabel.style.display='block'
            progressBar.classList.add('show-error')
        }
    })
})

inputFields.forEach((input) => {
    if (allGoals[input.id]) {
        input.value = allGoals[input.id].name
        if (allGoals[input.id].completed) {
            input.parentElement.classList.add('completed')
        }
    }


    input.addEventListener('focus', () => {
        progressBar.classList.remove('show-error')
    })

    input.addEventListener('input', (e) => {
        if (allGoals[input.id] && allGoals[input.id].completed) {
            input.value = allGoals[input.id].name
            return
        }

        allGoals[input.id] = {
            name: input.value,
            completed: false,
        }
        localStorage.setItem('allGoals', JSON.stringify(allGoals))
        // console.dir(e.target.id);
    })
})

