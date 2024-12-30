<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Registration Form</title>
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            max-width: 600px;
            width: 100%;
            margin: 20px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input[type="text"], input[type="email"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="radio"], input[type="checkbox"] {
            margin-right: 10px;
        }

        .form-inline {
            display: flex;
            justify-content: space-between;
            margin-top: 5px;
        }

        .form-inline label {
            flex: 1;
        }

        .form-inline input {
            margin-top: 0;
        }

        /* Submit button styling */
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .form-inline {
                flex-direction: column;
                align-items: flex-start;
            }

            .form-inline label {
                margin-bottom: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registration Form</h2>
        <form action="savemanger" method="post" enctype="multipart/form-data">
            <!-- Name Field -->
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="mname" required>
            </div>

            <!-- Email Field -->
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="memail" required>
            </div>

            <!-- Password Field -->
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="mpass" required>
            </div>

            <!-- Confirm Password Field -->
            <div class="form-group">
                <label for="confirm_password">Confirm Password:</label>
                <input type="password" id="confirm_password" name="mcpass" required>
            </div>

            <!-- Gender Radio Button -->
            <div class="form-group">
                <label>Gender:</label>
                <div class="form-inline">
                  
                        <input type="radio" id="male" name="mgender" value="male" required> Male
                        <input type="radio" id="female" name="mgender" value="female"> Female
                    
                  
                </div>
            </div>

            <!-- State Dropdown -->
            <div class="form-group">
                <label for="state">State:</label>
                <select id="state" name="mstate" required>
                    <option value="India">India</option>
                    <option value="california">California</option>
                    <option value="texas">Texas</option>
                    <option value="florida">Florida</option>
                    <option value="new-york">New York</option>
                    <!-- Add more states as needed -->
                </select>
            </div>

            
              <div class="form-group">
                <label for="file">File upload</label>
                <input type="file" id="file" name="file" accept=".jpg,.jpeg,.pdf,.png" required>
            </div>
            
            
            <!-- Submit Button -->
            <div class="form-group">
                <input type="submit" value="Register">
            </div>
        </form>
    </div>
</body>
</html>
