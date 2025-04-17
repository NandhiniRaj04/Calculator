async function calculate() {
    const numbers = document.getElementById('numbers').value;
    const response = await fetch('http://localhost:3000/calculate', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ numbers: numbers }),
    });
  
    const data = await response.json();
    document.getElementById('result').innerText = 'Result: ' + data.result;
  }
  