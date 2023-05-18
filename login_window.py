from tkinter import *
import course_class
import teacher_class
import pymysql
from PIL import Image, ImageTk
import tkinter as tk

def judge():
    login=user_entry.get()
    password=password_entry.get()
    db = pymysql.connect(host='localhost',user= 'root',password= '200206', database='student', charset='utf8')
    cursor = db.cursor()
    sql = "SELECT S.SNO FROM S where S.SNO='%s' and S.PSWD='%s'" % (login,password)
    cursor.execute(sql)
    result = cursor.fetchall()
    if len(result)==0:
        cursor = db.cursor()
        sql = "SELECT T.TNAME FROM T where T.TNO='%s' and T.PSWD='%s'" % (login, password)
        cursor.execute(sql)
        result = cursor.fetchall()
    else:
        return result
    return result

def start():

    result = judge()
    if len(result) != 0:
        root.destroy()
        if result[0][0][0] == 'S':
            c = course_class.course(result[0][0])
            c.start()
        else:
            t = teacher_class.Teacher(result[0][0])
            t.start()
    else:
        Label(root, text="用户名或密码错误，请重新输入").place(x=100, y=400)

root = Tk()
root.title("用户登录界面")
#设置图标
root.iconphoto(False, tk.PhotoImage(file='nk_ico.gif'))

#背景图
photo = Image.open("nk_pic.jpg")
photo = photo.resize((370, 200))  # 规定图片大小
img0 = ImageTk.PhotoImage(photo)
img1 = tk.Label(image=img0).place(x=0,y=0)

root.config(background="white")
root.geometry("370x500")
root.resizable(0,0)

Label(root, text="用户名", fg="#7e0c6e", bg="white", font=("黑体", 12)).place(x=70, y=250)
user_entry = Entry(root, width=15, bg='#7e0c6e',fg='white', insertbackground='white')
user_entry.insert(0,'s1')
user_entry.place(x=150,y=250)
Label(root, text=" 密码 ", fg="#7e0c6e", bg="white", font=("黑体", 12)).place(x=70, y=300)
password_entry = Entry(root, width=15, bg='#7e0c6e', fg='white', insertbackground='white', show='*')
password_entry.insert(0,'s1')
password_entry.place(x=150, y=300)

star_button = Button(root,text="登陆",bg="#7e0c6e",fg="white",font=("黑体", 12),height=2,width=8,command=start)
star_button.place(x=150,y=350)
root.mainloop()
