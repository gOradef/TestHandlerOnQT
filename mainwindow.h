#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QLabel>
#include <QMainWindow>
#include <QFile>
#include <QPushButton>
#include <QRadioButton>
#include <QList>
#include <QGroupBox>
#include <QVBoxLayout>
#include <QMessageBox>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
    void setupQuestionsAndAnswers();
    void setupTest();
    void setupQuestionsWidgets();
    void setPageQuestions(int id);
    void setupNavMenu();
    void lightAnswers();
    void showCorrectAnsDW();
private slots:


private:
    Ui::MainWindow *ui;
    QStringList questions; //список для вопросов
    QLabel *str_comp_text_main;
    int count_questions{0};
    int right_answers{0};
    int current_question{0};
    QWidget *end_page = new QWidget();
    QMap<int, int> user_ans_map;
    QMap<int,int> ans_map;


    QList<QVBoxLayout*> inner_boxes; //список для хранения контейнеров с radioButtons
    QList<QRadioButton*> radioButtons;
    QListIterator<QString> *questions_iter;
};
#endif // MAINWINDOW_H
