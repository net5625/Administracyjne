import requests
import time

#url = "http://192.168.110.8:81" #Link przykładowy
log_file = f"log_{time.strftime('%Y%m%d_%H%M%S')}.txt"
interval = 60
duration = 2 * 60 * 60

def check_website(url):
    try:
        response = requests.get(url)
        if response.status_code == 200:
            return "Avaliable"
        else:
            return f"Error: {response.status_code}"
    except requests.ConnectionError:
        return "Conection error."

start_time = time.time()
end_time = start_time + duration

with open(log_file, "w") as file:
    while time.time() < end_time:
        try:
            status = check_website(url)
            log_entry = f"{time.strftime('%Y-%m-%d %H:%M:%S')} - {status}\n"
            file.write(log_entry)
            file.flush() 
            print(log_entry, end="")
            time.sleep(interval)
        except Exception as e:
            log_entry = f"{time.strftime('%Y-%m-%d %H:%M:%S')} - connection error: {e}\n"
            file.write(log_entry)
            file.flush()
            print(log_entry, end="")