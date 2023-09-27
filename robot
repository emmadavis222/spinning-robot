import time
import board
import digitalio
import pwmio

from adafruit_motor import motor

Left_Motor_Backwards = board.GP12
Left_Motor_Forward = board.GP13
Right_Motor_Backwards = board.GP14
Right_Motor_Forward = board.GP15

pwm_La = pwmio.PWMOut(Left_Motor_Backwards, frequency=10000)
pwm_Lb = pwmio.PWMOut(Left_Motor_Forward, frequency=10000)
pwm_Lc = pwmio.PWMOut(Right_Motor_Backwards, frequency=10000)
pwm_Ld = pwmio.PWMOut(Right_Motor_Forward, frequency=10000)

Left_Motor = motor.DCMotor(pwm_La, pwm_Lb)
Left_Motor_speed = 0
Right_Motor = motor.DCMotor(pwm_Lc, pwm_Ld)
Right_Motor_speed = 0

while True:

    Left_Motor_speed = -1
    Left_Motor.throttle = Left_Motor_speed
    time.sleep(2)
    Left_Motor_speed = 1
    Left_Motor.throttle = Left_Motor_speed
    time.sleep(2)
    Right_Motor_speed = -1
    Right_Motor.throttle = Left_Motor_speed
    time.sleep(2)
    Right_Motor_speed = 1
    Right_Motor.throttle = Left_Motor_speed
    time.sleep(2)
