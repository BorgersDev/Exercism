
const responseApi = fetch('https://api.chucknorris.io/jokes/random')
.then(response => {
    return response.json()
}).then(data => {
    console.log(data)
}).catch(error => {
    console.log(error)
}).finally( () => {
    console.log('finally')
})
