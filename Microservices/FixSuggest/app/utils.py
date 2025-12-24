import time

class Timer:
    def __init__(self) -> None:
        self.t0 = time.time()

    def ms(self) -> int:
        return int((time.time() - self.t0) * 1000)
