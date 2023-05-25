from tkinter import ttk
import tkinter as tk
import defs
import score_class


class course:
    def __init__(self, SNO):
        self.root = tk.Tk()
        self.root.config(background="white")
        self.root.wm_title(SNO)
        self.root.geometry("1000x500+300+100")
        self.root.resizable(0, 0)
        self.SNO = SNO

        self.course_label = tk.Label(
            self.root, text="可选课程", bg="#7e0c6e", fg="white", font=("黑体", 12))
        self.choose_course_label = tk.Label(
            self.root, text="已选课程", bg="#7e0c6e", fg="white", font=("黑体", 12))
        self.course_entry_label = tk.Label(
            self.root, text="请输入课程号：", bg="#7e0c6e", fg="white", font=("黑体", 12))

        columns_student_text = ('SNO', 'SNAME', 'SEX', 'AGE', 'SDEPT')
        self.student_text = ttk.Treeview(
            self.root, height=1, columns=columns_student_text, show='headings')
        for col in columns_student_text:
            self.student_text.heading(col, text=col)
            self.student_text.column(col, width=80, anchor=tk.CENTER)

        columns_course_text = ('CNO', 'CNAME', 'CREDIT', 'CDEPT', 'TNAME')
        self.course_text = ttk.Treeview(
            self.root, height=7, columns=columns_course_text, show='headings')
        self.course_text.bind('<<TreeviewSelect>>', self.on_select)
        for col in columns_course_text:
            self.course_text.heading(col, text=col)
            self.course_text.column(col, width=80, anchor=tk.CENTER)

        columns_choose_course_text = (
            'CNO', 'CNAME', 'CREDIT', 'CDEPT', 'TNAME')
        self.choose_course_text = ttk.Treeview(
            self.root, height=7, columns=columns_choose_course_text, show='headings')
        self.choose_course_text.bind('<<TreeviewSelect>>', self.on_select)
        for col in columns_choose_course_text:
            self.choose_course_text.heading(col, text=col)
            self.choose_course_text.column(col, width=80, anchor=tk.CENTER)

        self.course_entry = tk.Entry(
            self.root, width=5, bg='#7e0c6e', fg='white', insertbackground='white')

        self.course_button = tk.Button(self.root, text="选课", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.choose_course)
        self.course_button2 = tk.Button(self.root, text="退课", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.delete_course)
        self.course_button3 = tk.Button(self.root, text="关闭", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.root.destroy)
        self.course_button4 = tk.Button(self.root, text="成绩", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.intoscore(SNO))

    def inilize(self):
        self.student_text.place(x=295, y=400)

        self.course_label.grid(row=3, column=0, sticky=(tk.N, tk.S))
        self.course_text.grid(row=4, column=0, sticky='news', padx=35)

        self.choose_course_label.grid(row=3, column=2, sticky=(tk.N, tk.S))
        self.choose_course_text.grid(row=4, column=2, sticky='news', padx=35)

        self.course_entry_label.grid(row=6, column=0, pady=20)
        self.course_entry.grid(row=7, column=0)
        self.course_button.grid(row=6, column=2)
        self.course_button2.grid(row=7, column=2)
        self.course_button3.grid(row=2, column=1)
        self.course_button4.grid(row=1, column=1, pady=10)

    # 选课
    def choose_course(self):
        course_number = self.course_entry.get()
        defs.insert_choose_course(self.SNO, str(course_number), 0)
        self.update_ui()

    # 退课
    def delete_course(self):
        course_number = self.course_entry.get()
        defs.delete_choose_course(self.SNO, str(course_number))
        self.update_ui()

    # 更新ui
    def update_ui(self):
        for row in self.student_text.get_children():
            self.student_text.delete(row)

        for row in self.course_text.get_children():
            self.course_text.delete(row)

        for row in self.choose_course_text.get_children():
            self.choose_course_text.delete(row)

        defs.display_student(self.student_text, self.SNO)
        defs.display_course(self.course_text, self.SNO)
        defs.display_choose_course(self.choose_course_text, self.SNO)

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

    def on_select(self, event):
        tree = event.widget
        selected_item = tree.selection()[0]
        value = tree.item(selected_item, 'values')[0]
        self.course_entry.delete(0, tk.END)
        self.course_entry.insert(tk.END, value)


if __name__ == '__main__':
    c = course('S2110951')
    c.start()
