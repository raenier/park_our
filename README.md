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

5. Go to http://localhost:3000

## Park Vehicle

1. Select Entrance

![Screenshot 2024-06-21 at 7 28 24 AM](https://github.com/raenier/park_our/assets/13548003/e5e6500e-b0f9-4ec5-b008-0321c2b67bb2)

2. Enter Vehicle Plate number and Select Size

![Screenshot 2024-06-21 at 7 29 42 AM](https://github.com/raenier/park_our/assets/13548003/7bf2214a-77ed-41d1-99bf-32477e4198cc)

3. Click Park

4. Check on list of Parking Spaces if its parked

![Screenshot 2024-06-21 at 7 30 47 AM](https://github.com/raenier/park_our/assets/13548003/15bf21a7-65ed-4dd0-a975-384ec787235f)

## Unpark Vehicle
1. Go to list of Parking Spaces
2. Click Unpark button

![Screenshot 2024-06-21 at 7 33 07 AM](https://github.com/raenier/park_our/assets/13548003/14102ca9-ff64-4108-a278-46aa02ac750f)

3. Check Total Fee at the top

![Screenshot 2024-06-21 at 7 34 20 AM](https://github.com/raenier/park_our/assets/13548003/42505aa3-9d94-4d32-b187-6d5a1d150ebd)

