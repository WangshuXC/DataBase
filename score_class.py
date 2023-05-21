from tkinter import ttk
import tkinter as tk
from PIL import Image, ImageTk
import tets
import course_class


class score:
    def __init__(self, SNO):
        self.root = tk.Tk()
        self.root.config(background="white")
        self.root.wm_title(SNO)
        self.root.geometry("400x500")
        self.root.resizable(0, 0)
        self.SNO = SNO

        self.score_label = tk.Label(
            self.root, text="已修课程成绩", bg="#7e0c6e", fg="white", font=("黑体", 12))

        columns_score_text = ('CNO', 'CNAME', 'GRADE')
        self.score_text = ttk.Treeview(
            self.root, height=7, columns=columns_score_text, show='headings')
        for col in columns_score_text:
            self.score_text.heading(col, text=col)
            self.score_text.column(col, width=100, anchor=tk.CENTER)

        self.course_button = tk.Button(self.root, text="关闭", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.root.destroy)
        self.course_button2 = tk.Button(self.root, text="返回", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.back(SNO))

    def update_ui(self):
        tets.display_score(self.score_text, self.SNO)

    def inilize(self):
        self.score_label.grid(row=0, column=1, sticky=tk.W)
        self.score_text.grid(row=1, column=1, sticky='news')
        self.course_button.grid(row=1, column=2)
        self.course_button2.grid(row=2, column=2)

    def start(self):
        self.inilize()
        self.update_ui()
        self.root.mainloop()

    def back(self, SNO):
        def inner():
            self.root.destroy()
            c = course_class.course(SNO)
            c.start()
        return inner


if __name__ == '__main__':
    c = score('S1')
    c.start()