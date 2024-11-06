import tkinter as tk
import os

def main():
	os.environ['DISPLAY'] = ':0'
	try:
		root = tk.Tk()
		speed_text = tk.StringVar()
		speed_text.set("Hello World")

		speed_label = tk.Label(root, textvariable=speed_text, font=("Arial",14))

		speed_label.pack()
		print ("Entered Main Loop")
		root.mainloop()
	except Exception as e:
		print ("Tkinter Failed", e)

	print ("End of file")

if __name__ == "__main__":
	main()
