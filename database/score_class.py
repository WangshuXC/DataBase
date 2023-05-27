from tkinter import ttk
import tkinter as tk
import defs
import course_class


class score:
    def __init__(self, SNO):
        self.root = tk.Tk()
        self.root.config(background="white")
        self.root.wm_title(SNO)
        self.root.geometry("400x500+300+100")
        self.root.resizable(0, 0)
        self.SNO = SNO

        self.score_label = tk.Label(
            self.root, text="已修课程成绩", bg="#7e0c6e", fg="white", font=("黑体", 12))

        columns_score_text = ('CNO', 'CNAME', 'GRADE')
        self.score_text = ttk.Treeview(
            self.root, height=14, columns=columns_score_text, show='headings')
        for col in columns_score_text:
            self.score_text.heading(col, text=col)
            self.score_text.column(col, width=135, anchor=tk.CENTER)

        self.course_button = tk.Button(self.root, text="关闭", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.root.destroy)
        self.course_button2 = tk.Button(self.root, text="返回", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.back(SNO))

    def update_ui(self):
        defs.display_score(self.score_text, self.SNO)

    def inilize(self):
        self.score_label.grid(row=0, column=1, sticky=(tk.N, tk.S))
        self.score_text.grid(row=1, column=1, sticky='news')
        self.course_button.grid(row=3, column=1)
        self.course_button2.grid(row=2, column=1, pady=30)

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
    c = score('S2110951')
    c.start()
