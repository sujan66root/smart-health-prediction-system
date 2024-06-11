# Smart Health Prediction System

## Abstract

- This Smart Health Prediction System is a web application developed for my final year college thesis project. 
- It leverages data mining techniques to predict diseases based on symptoms provided by users. 
- Designed to assist doctors, the system uses Support Vector Machines (SVM) for accurate disease prediction, enhancing the efficiency and reliability of diagnoses. 
- This application aims to support busy doctors by providing insights derived from medical datasets, helping them make informed decisions about patient care.


## Features

- User-friendly interface for data input
- Health prediction based on user data
- Secure and efficient data processing
- Detailed prediction results and recommendations

## Technologies Used

### Front End

- HTML
- CSS
- JavaScript
- jQuery

### Back End

- Django
- Python
- PostgreSQL

### Libraries

- Pandas 0.20.1
- Seaborn 0.7.1
- Plotly 2.6.0
- Matplotlib 2.2.2
- scikit-learn 0.21.3

## Installation Guide

### Prerequisites

- Python 3.7
- Django 3.0.3
- PostgreSQL (PG4)

### Steps to Install

1. **Clone the repository:**
    ```bash
    git clone https://github.com/sujan66root/smart-health-prediction-system.git
    cd smart-health-prediction-system
    ```

2. **Set up the Database:**
   - Install PostgreSQL (PG4).
   - The database file is located inside the `database` folder.

3. **Install Python and Django:**
   - Ensure Python 3.7.7 is installed.
   - Ensure Django 3.0.3 is installed.

4. **Install required Python packages:**
    ```bash
    pip install -r requirements.txt
    ```

5. **Apply database migrations:**
    ```bash
    python manage.py migrate
    ```

6. **Create a superuser (optional, for admin access):**
    ```bash
    python manage.py createsuperuser
    ```

7. **Run the development server:**
    ```bash
    python manage.py runserver
    ```

8. **Access the application:**
   - Open your web browser and navigate to `http://127.0.0.1:8000/`

