from flask import Flask, render_template, request
import os
import logging
import logging.handlers

app = Flask(__name__)

# Function to log an error to Apache
def log_to_apache(error_message):
    with open("/var/log/apache2/error.log", "a") as apache_log:
        apache_log.write(f"{error_message}\n")

# Function to log an error to Syslog
def log_to_syslog(error_message):
    syslog = logging.getLogger('SyslogLogger')
    syslog.setLevel(logging.INFO)
    handler = logging.handlers.SysLogHandler(address='/dev/log')
    syslog.addHandler(handler)
    syslog.info(error_message)

# Function to log an error to Secure log
def log_to_secure(error_message):
    with open("/var/log/auth.log", "a") as secure_log:
        secure_log.write(f"{error_message}\n")

# Flask Route for logging error
@app.route('/log_error', methods=['POST'])
def log_error():
    log_type = request.form['logType']
    error_message = request.form['errorMessage']

    if log_type == 'apache':
        log_to_apache(error_message)
    elif log_type == 'syslog':
        log_to_syslog(error_message)
    elif log_type == 'secure':
        log_to_secure(error_message)

    return "Error logged successfully!"

# Main Route to render HTML
@app.route('/')
def index():
    return render_template('index.html')

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5000)
