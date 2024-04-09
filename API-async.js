const url = 'https://api.chucknorris.io/jokes/random';

async function getData() {
    try {
        const response = await fetch(url);
        const responseJson = await response.json()
        console.log(responseJson)
    } catch (error) {
        console.log(error)
    } finally {
        console.log('finally')
    }
}

getData()