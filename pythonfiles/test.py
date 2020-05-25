from robot.libraries.BuiltIn import BuiltIn
from seleniumwire import webdriver


def get_the_wire():
    i = ''
    driver = webdriver.Chrome()
    driver.maximize_window()
    url = "https://kite.zerodha.com/"
    driver.get(url)
    driver.find_element_by_xpath("/html//div[@id='containeru']//form[@method='post']/div[2]/input").send_keys("YN5245")
    driver.find_element_by_xpath("/html//div[@id='container']//form[@method='post']/div[@class='su-input-group']/input").send_keys("pin0987@Z")
    driver.find_element_by_xpath("//button[contains(text(),'Login')]").click()
    driver.wait_for_request("https://kite.zerodha.com/api/login", timeout=30)

    for request in driver.requests:
        if request.path == "https://kite.zerodha.com/api/login":
            print(request.response.body)
            i = request.response.body
    driver.quit()
    return i