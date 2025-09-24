<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
   <style>
 body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #f8f8f8;
}

/* Stats Section */
.stats-container {
    display: flex;
    justify-content: space-around;
    align-items: center;
    flex-wrap: wrap;
    padding: 50px 20px;
    background: white;
    box-shadow: 0 4px 12px rgba(0,0,0,0.05);
}

.stat-box {
    text-align: center;
    padding: 20px;
    background-color: #fafafa;
    border-radius: 12px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.05);
    width: 180px;
    margin: 10px;
    transition: transform 0.3s;
}

.stat-box:hover {
    transform: translateY(-5px);
}

.stat-box h2 {
    font-size: 28px;
    color: #000;
    margin: 10px 0;
}

.stat-box p {
    font-size: 14px;
    color: #666;
    margin: 0;
}

.icon {
    font-size: 32px;
    color: #a54bc9;
}

/* Chart Section */
.chart-section {
    padding: 40px 20px;
    background: #ffffff;
    margin: 30px auto;
    max-width: 800px;
    border-radius: 12px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.05);
    text-align: center;
}

.chart-section h3 {
    margin-bottom: 20px;
    font-size: 20px;
    color: #333;
}
   </style>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>

<body>

<!-- Stats Section -->
<div class="stats-container">
    <div class="stat-box">
        <i class="icon">&#128100;</i>
        <h2 class="counter" data-target="20000000">0</h2>
        <p>users</p>
    </div>

    <div class="stat-box">
        <i class="icon">&#128196;</i>
        <h2 class="counter" data-target="100000000">0</h2>
        <p>pageviews per month</p>
    </div>

    <div class="stat-box">
        <i class="icon">&#128231;</i>
        <h2 class="counter" data-target="3000000">0</h2>
        <p>email subscribers</p>
    </div>

    <div class="stat-box">
        <i class="icon">&#128640;</i>
        <h2 class="counter" data-target="50000">0</h2>
        <p>new users weekly</p>
    </div>
</div>

<!-- Chart Section -->
<div class="chart-section">
    <h3>Monthly Active Users</h3>
    <canvas id="userChart" width="600" height="300"></canvas>
</div>

<!-- Counter Animation Script -->
<script>
    const counters = document.querySelectorAll('.counter');

    counters.forEach(counter => {
        counter.innerText = '0';

        const updateCounter = () => {
            const target = +counter.getAttribute('data-target');
            const current = +counter.innerText;
            const increment = target / 200; // speed of counting

            if (current < target) {
                counter.innerText = Math.ceil(current + increment);
                setTimeout(updateCounter, 10); // delay
            } else {
                counter.innerText = target.toLocaleString(); // format with commas
            }
        };

        updateCounter();
    });
</script>

<!-- Chart Script -->
<script>
    const ctx = document.getElementById('userChart').getContext('2d');

    const labels = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];

    const data = {
        labels: labels,
        datasets: [
            {
                label: 'Active Users (M)',
                data: [10, 12, 14, 16, 18, 20],
                backgroundColor: '#a54bc9'
            },
            {
                label: 'Pageviews (M)',
                data: [60, 70, 75, 80, 90, 100],
                backgroundColor: '#FF6384'
            },
            {
                label: 'Email Subscribers (M)',
                data: [1.5, 2.0, 2.5, 2.7, 2.9, 3.0],
                backgroundColor: '#36A2EB'
            },
            {
                label: 'New Users Weekly (K)',
                data: [20, 30, 35, 40, 45, 50],
                backgroundColor: '#FFCE56'
            }
        ]
    };

    const config = {
        type: 'bar',
        data: data,
        options: {
            responsive: true,
            interaction: {
                mode: 'index',
                intersect: false
            },
            scales: {
                x: {
                    stacked: false
                },
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Counts'
                    }
                }
            },
            plugins: {
                legend: {
                    display: true,
                    position: 'top'
                },
                tooltip: {
                    mode: 'index',
                    intersect: false
                }
            }
        },
    };

    const userChart = new Chart(ctx, config);
</script>

</body>
</html>
