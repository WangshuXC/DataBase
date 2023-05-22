from tkinter import ttk
import tets
import tkinter as tk


class Teacher:
    def __init__(self, TNO):
        self.TNO = TNO
        self.root = tk.Tk()
        self.root.config(background="white")
        self.root.title(TNO)
        self.root.geometry("600x370+300+100")
        self.root.resizable(0, 0)
        self.course_label = tk.Label(
            self.root, text="课程名", bg="#7e0c6e", fg="white", font=("黑体", 12))
        self.student_label = tk.Label(
            self.root, text="已选修此课程的学生", bg="#7e0c6e", fg="white", font=("黑体", 12))

        self.lb = tk.Listbox(self.root, width=20, height=10)
        columns = ('SNO', 'SNAME', 'GRADE')
        self.student_text = ttk.Treeview(
            self.root, height=8, columns=columns, show='headings')
        self.student_text.bind('<<TreeviewSelect>>', self.on_select)
        for col in columns:
            self.student_text.heading(col, text=col)
            self.student_text.column(col, width=80, anchor=tk.CENTER)
        self.sb = tk.Scrollbar(self.root, orient=tk.VERTICAL,
                               command=self.student_text.yview)
        self.student_text.config(yscrollcommand=self.sb.set)

        tk.Label(self.root, text="学号：", bg="#7e0c6e",
                 fg="white", font=("黑体", 12)).grid(row=3, column=0, pady=10)
        tk.Label(self.root, text="成绩：", bg="#7e0c6e",
                 fg="white", font=("黑体", 12)).grid(row=5, column=0, pady=10)

        self.student_id_entry = tk.Entry(self.root, text="学号", width=5, bg='#7e0c6e', fg='white', insertbackground='white')
        self.student_grape_entry = tk.Entry(self.root, text="成绩", width=5, bg='#7e0c6e', fg='white', insertbackground='white')

        self.student_button = tk.Button(
            self.root, text="查询", command=self.find_score, bg="cadetblue", fg="white", font=("黑体", 12))
        self.score_button = tk.Button(self.root, text="输入成绩", bg="cadetblue", fg="white", font=(
            "黑体", 12), command=self.change_score)

    def inilize(self):
        self.course_label.grid(row=1, column=0)
        self.student_label.grid(row=1, column=2)

        self.student_text.grid(row=2, column=2, sticky='news', padx=20)
        self.sb.place(x=522, y=22, height=187)

        var = tk.StringVar()
        for item in tets.find_teacher_course(self.TNO):
            self.lb.insert(tk.END, item)
        self.lb.grid(row=2, column=0, padx=20)
        self.student_id_entry.grid(row=4, column=0)
        self.student_grape_entry.grid(row=6, column=0)
        # 查询
        self.student_button.grid(row=2, column=1)
        # 输入成绩
        self.score_button.grid(row=5, column=1)

    # 查询选了该老师该课的学生成绩
    def find_score(self):
        CNAME = self.lb.get(self.lb.curselection())[0]
        for row in self.student_text.get_children():
            self.student_text.delete(row)
        tets.find_student_score(self.student_text, CNAME, self.TNO)
    # 修改成绩

    def change_score(self):

        SNO = self.student_id_entry.get()
        GRADE = self.student_grape_entry.get()
        CNAME = self.lb.get(self.lb.curselection())[0]
        tets.change_score(SNO, GRADE, CNAME)
        self.find_score()

    def start(self):
        self.inilize()
        self.root.mainloop()

    #
    def on_select(self, event):
        tree = event.widget
        selected_item = tree.selection()[0]
        value = tree.item(selected_item, 'values')[0]
        self.student_id_entry.delete(0, tk.END)
        self.student_id_entry.insert(tk.END, value)


if __name__ == '__main__':
    c = Teacher('刘红')
    c.start()
