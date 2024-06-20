# OO Parking Lot

Welcome to ParkOur, your smart parking system.
Simply enter your car's license plate number and size, and our app will automatically select the nearest available parking spot based on your vehicle's dimensions and the closest entrance.

Key Features:

- Automated Spot Selection: Find the nearest spot effortlessly.
- Size-Based Allocation: Ensures a perfect fit for your vehicle.
- Entrance Optimization: Minimizes walking distance by choosing spots near the closest entrance.

## Up and Running
1. Clone this repo on your local machine
```
git clone git@github.com:raenier/park_our.git
cd park_our
```

2. Install dependencies
```
bundle install
```

3. Set up database and sample data
```
rails db:create
rails db:migrate
rails db:seed
```

4. Run rails server
```
rails server
```

5. Go to localhost:3000
