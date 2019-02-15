import cv2
import sys


C_WIDTH = 640
C_HEIGHT = 480

cap = cv2.VideoCapture('./video.mp4')

while True:
    ret, frame = cap.read()

    if ret:
        copy = frame.copy()
        copy = cv2.resize(copy, (C_WIDTH, C_HEIGHT))

        sys.stdout.buffer.write(copy.tostring())
        sys.stdout.buffer.flush()

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()