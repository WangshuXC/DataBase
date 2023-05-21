from tkinter import ttk
import tkinter as tk
from PIL import Image, ImageTk
import tets
import score_class


class course:
    def __init__(self, SNO):
        self.root = tk.Tk()
        self.root.config(background="white")
        self.root.wm_title(SNO)
        self.root.geometry("1000x500")
        self.root.resizable(0, 0)
        self.SNO = SNO

        self.student_label = tk.Label(
            self.root, text="学生详细信息：", bg="#7e0c6e", fg="white", font=("黑体", 12))
        self.course_label = tk.Label(
            self.root, text="可选课程", bg="#7e0c6e", fg="white", font=("黑体", 12))
        self.choose_course_label = tk.Label(
            self.root, text="已选课程", bg="#7e0c6e", fg="white", font=("黑体", 12))
        self.course_entry_label = tk.Label(
            self.root, text="请输入课程号：", bg="#7e0c6e", fg="white", font=("黑体", 12))

        # self.student_text = tk.Text(self.root, height=7, width=50)
        columns_student_text = ('SNO', 'SNAME', 'SEX', 'AGE', 'SDEPT')
        self.student_text = ttk.Treeview(
            self.root, height=1, columns=columns_student_text, show='headings')
        for col in columns_student_text:
            self.student_text.heading(col, text=col)
            self.student_text.column(col, width=80, anchor=tk.CENTER)

        # self.course_text = tk.Text(self.root, height=7,bg="white", fg="cadetblue", width=50)
        columns_course_text = ('CNO', 'CNAME', 'CREDIT', 'CDEPT', 'TNAME')
        self.course_text = ttk.Treeview(
            self.root, height=7, columns=columns_course_text, show='headings')
        for col in columns_course_text:
            self.course_text.heading(col, text=col)
            self.course_text.column(col, width=80, anchor=tk.CENTER)

        # self.choose_course_text = tk.Text(self.root, height=7, width=50, bg="white", fg="maroon")
        columns_choose_course_text = (
            'CNO', 'CNAME', 'CREDIT', 'CDEPT', 'TNAME')
        self.choose_course_text = ttk.Treeview(
            self.root, height=7, columns=columns_choose_course_text, show='headings')
        for col in columns_choose_course_text:
            self.choose_course_text.heading(col, text=col)
            self.choose_course_text.column(col, width=80, anchor=tk.CENTER)

        self.course_entry = tk.Entry(self.root, width=5)

        self.course_button = tk.Button(self.root, text="选课", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.choose_course)
        self.course_button2 = tk.Button(self.root, text="退课", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.delete_course)
        self.course_button3 = tk.Button(self.root, text="关闭", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.root.destroy)
        self.course_button4 = tk.Button(self.root, text="成绩", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.intoscore(SNO))

    def inilize(self):
        self.student_label.grid(row=0, column=0, sticky=tk.W)
        self.student_text.grid(row=1, column=0, sticky='news')

        self.course_label.grid(row=3, column=0, sticky=tk.W)
        self.course_text.grid(row=4, column=0, sticky='news')

        self.choose_course_label.grid(row=3, column=1, sticky=tk.W)
        self.choose_course_text.grid(row=4, column=1, sticky='news')

        self.course_entry_label.grid(row=0, column=3)
        self.course_entry.grid(row=1, column=3)
        self.course_button.grid(row=5, column=0)
        self.course_button2.grid(row=5, column=1)
        self.course_button3.grid(row=5, column=2)
        self.course_button4.grid(row=4, column=3)

    # 选课
    def choose_course(self):
        # print("call choose!")
        course_number = self.course_entry.get()
        # print("call choose!")
        tets.insert_choose_course(self.SNO, str(course_number), 0)
        # print("call choose!")
        self.update_ui()
        # print("update!")

    # 退课
    def delete_course(self):
        course_number = self.course_entry.get()
        tets.delete_choose_course(self.SNO, str(course_number))
        self.update_ui()

    # 更新ui
    def update_ui(self):
        # self.student_text.delete(1.0, tk.END)
        for row in self.student_text.get_children():
            self.student_text.delete(row)

        # self.course_text.delete(1.0, tk.END)
        for row in self.course_text.get_children():
            self.course_text.delete(row)

        # self.choose_course_text.delete(1.0, tk.END)
        for row in self.choose_course_text.get_children():
            self.choose_course_text.delete(row)

        tets.display_student(self.student_text, self.SNO)
        tets.display_course(self.course_text, self.SNO)
        tets.display_choose_course(self.choose_course_text, self.SNO)

    def start(self):
        self.inilize()
        self.update_ui()
        self.root.mainloop()

    def intoscore(self, SNO):
        def inner():
            self.root.destroy()
            s = score_class.score(SNO)
            s.start()
        return inner


if __name__ == '__main__':
    c = course('S5')
    c.start()
