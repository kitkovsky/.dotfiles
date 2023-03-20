import pyautogui as pg
from getpass import getpass
from typing import List

pg.PAUSE = 0.2
pg.FAILSAFE = True

APPS = ["slack", "spotify", "google-chrome"]


PASSWORD = getpass()


def write(cmd: str | List[str], newline: bool = True) -> None:
    if type(cmd) == List:
        pg.typewrite([f"{c}\n" if newline else f"{c}" for c in cmd])
    else:
        pg.typewrite(f"{cmd}\n" if newline else f"{cmd}")


def password():
    write(PASSWORD)


class I3:
    @classmethod
    def move_window(cls, idx: int) -> None:
        pg.hotkey("shift", "winleft", str(idx))

    @classmethod
    def move_focus(cls, idx: int) -> None:
        pg.hotkey("winleft", str(idx))

    @classmethod
    def lets_go(cls) -> None:
        I3.move_window(2)
        I3.move_focus(2)
        I3.move_focus(1)
        I3.move_focus(8)
        I3.move_focus(2)
        I3.move_window(1)
        I3.move_focus(1)
        pg.hotkey("winleft", "t")


class Tmux:
    @classmethod
    def init(cls):
        write("tmux a")
        pg.hotkey("ctrl", "a")
        write("S")
        ssh()
        pg.hotkey("ctrl", "l")

    @classmethod
    def new_window(cls) -> None:
        pg.hotkey("ctrl", "a")
        write("c")
        ssh()
        pg.hotkey("ctrl", "l")

    @classmethod
    def clean_up(cls) -> None:
        pg.hotkey("ctrl", "a")
        write("w", False)
        write("/get")
        write("x", False)
        write("y", False)
        pg.hotkey("enter")
        pg.hotkey("ctrl", "a")
        write("1", False)

    @classmethod
    def lets_go(cls) -> None:
        Tmux.init()
        Tmux.new_window()
        Tmux.new_window()
        Tmux.clean_up()


def open_app(app_name: str) -> None:
    pg.hotkey("winleft", "space")
    write(app_name)
    pg.hotkey("enter")
    pg.moveTo(200, 200)


def polybar(bar_name: str) -> None:
    write(f"polybar {bar_name}")
    pg.hotkey("ctrl", "z")
    write("bg")


def ssh() -> None:
    write('eval "$(ssh-agent -s)"')
    write("ssh-add ~/.ssh/id_ed25519")
    password()


def move_chrome_around() -> None:
    pg.moveTo(2000, 200)
    I3.move_window(2)
    I3.move_focus(2)
    pg.hotkey("ctrl", "n")
    I3.move_window(8)
    pg.click(2489, 95)
    pg.click(2415, 508)
    I3.move_window(9)
    I3.move_focus(1)


def main() -> None:
    I3.lets_go()
    write("nitrogen --restore")
    polybar("top")
    polybar("top-internal")
    Tmux.lets_go()
    for app in APPS:
        open_app(app)
    move_chrome_around()
    pg.hotkey("shift", "winleft", "[")


if __name__ == "__main__":
    main()
