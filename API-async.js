const url = 'https://api.chucknorris.io/jokes/random';

async function getData() {
    const response = await fetch(url);
    const responseJson = await response.json()
    console.log(responseJson)
}

getData()