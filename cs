import tkinter as tk
from tkinter import Entry, Label, Button


def check_password_strength():
    password = entry.get()
    length = len(password)

    if length <= 5:
        strength_label.config(text="Weak", fg="red")
    elif 6 <= length <= 8:
        strength_label.config(text="Medium", fg="yellow")
    elif 9 <= length <= 12:
        strength_label.config(text="Strong", fg="light green")
    else:
        strength_label.config(text="Very Strong", fg="dark green")


root = tk.Tk()
root.title("Length Converter App")
root.geometry("400x400")

label = Label(root, text="Enter Password:")
label.pack(pady=10)

entry = Entry(root, show="*")
entry.pack(pady=10)

button = Button(root, text="Check Strength", command=check_password_strength)
button.pack(pady=10)

strength_label = Label(root, text="", font=("Arial", 14))
strength_label.pack(pady=10)


root.mainloop()
