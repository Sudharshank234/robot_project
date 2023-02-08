import pytest
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.select import Select

class Tnstc:
    def __init__(self):
        self.driver = webdriver.Chrome()
        self.driver.maximize_window()
        self.driver.implicitly_wait(30)
        self.driver.get("https://www.tnstc.in/")

    def login(self):
        self.driver.find_element(By.LINK_TEXT, "E-Ticket Login").click()
        self.driver.find_element(By.NAME, "txtUserLoginID").send_keys("sudharshan.k234@gmail.com")
        self.driver.find_element(By.NAME, "txtPassword").send_keys("dharshan")
        select_lan = (self.driver.find_element(By.XPATH, "//a[@class='dboxheader']")).click()

class TicketBooking(Tnstc):
    def Booking(self):
        self.driver.find_element(By.LINK_TEXT, "Chennai - Ooty").click()
        self.driver.find_element(By.LINK_TEXT, "Book").click()
        self.driver.find_element(By.NAME, "txtName").send_keys("Sudharshan")
        self.driver.find_element(By.NAME, "txtAge").send_keys("21")
        select_id = Select(self.driver.find_element(By.NAME, "selectIdProof"))
        select_id.select_by_visible_text("Employee ID Card")
        self.driver.find_element(By.NAME, "txtIdProofReference").send_keys("123456")
        self.driver.find_element(By.NAME, "txtPhoneNo").send_keys("7572747929")
        self.driver.find_element(By.NAME, "txtEmailID").send_keys("sudharshan@gmail.com")
        self.driver.find_element(By.LINK_TEXT, "Submit").click()

obj = TicketBooking()
def test_login():
    obj.login()
    assert obj.driver.title == "TNSTC"


if __name__ == "__main__":
    pytest.main()
