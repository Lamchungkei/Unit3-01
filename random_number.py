# Created by: Kay Lin
# Created on: Oct 3rd 2017
# Created for: ICS3U
# This program shows Number Guessing Game

import ui

MY_NUMBER = 5

def check_my_number_touch_up_inside(sender):
    # check the number entered verses the constant above
    
    # input
    number_entered = int(view['my_number_textfield'].text)
    
    # process
    if number_entered == MY_NUMBER:
       # output
       view['get_it_correct_label'].text = "Get it correct!"
    
view = ui.load_view()
view.present('full_sheet')
