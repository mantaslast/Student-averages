document.addEventListener("DOMContentLoaded", function() {
    // Request students data from students data API endpoint
    request('/api/v1/students', () => {
        document.getElementById('studentsData').classList.add('loading')
    }).then((response) => {
        document.getElementById('studentsData').classList.remove('loading')
        if (!response || response.length === 0)  return false
        // Format html string
        let html = response.reduce((accHtml, currValue) => {
            let tableRowHtml = `<tr>
            <th>${currValue['university']}</th>
            <td>${currValue['full_name']}</td>
            <td>${currValue['discrete_mathematics']}</td>
            <td>${currValue['object_oriented_programming']}</td>
            <td>${currValue['philosophy']}</td>
            <td>${currValue['english']}</td>
            <td>${currValue['project_management']}</td>
            </tr>`
            return accHtml += tableRowHtml
        }, '')
        let appendTo = document.getElementById('studentsData').querySelector('tbody')
        appendTo.innerHTML = html
    }).catch((error) => {
        console.error(error);
    })
});

/*
* @string url
* @function loaderFn
* Returns Promise with resolved response JSON. Calls loaderFn - loading animation function immediately
*/
function request (url, loaderFn) {
    loaderFn ? loaderFn() : ''
    return fetch(url, {
        headers: {
             'Accept': 'application/json',
             'Content-Type': 'application/json'
      },
      method:'GET'
   }).then(response => response.json())
}