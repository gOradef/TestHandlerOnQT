#include "mainwindow.h"
#include "./ui_mainwindow.h"



MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    this->setFixedSize(800,500);
    setWindowTitle("Тест по вселенной Гарри Поттера");
    setupQuestionsAndAnswers();
    setupTest();

}

MainWindow::~MainWindow()
{
    delete ui;
    delete end_page;
    delete questions_iter;
}

void MainWindow::setupQuestionsAndAnswers() {
    //!Берем данные из файла
    QFile file(":/test.txt");
    QByteArray buffer; //ради отсутсвия зависимости записываем данный в буфер
    if (!file.open(QIODevice::ReadOnly)) { //Если файл НЕ открыт
        qDebug("file doesnt open!");
        return; //Тест не будет прогружен
    }
    buffer = file.readAll();
    file.close(); //благодаря буферу избавляемся от лишнего потока

    //загружаем вопросы в список
    questions = QString(buffer).split("\r\n");
    QStringList str_answers = questions.front().split(" ");
    count_questions = str_answers.size();
    int i {1};
    //загружаем ответы в словарь <вопрос - ответ>
    for(auto el : str_answers) {
        ans_map[i++] = el.toInt();
    }
    //избавляемся от строки с ответами
    questions.pop_front();

    questions_iter = new QListIterator<QString>(questions); //в угоду оптимальности будем использовать итератор

}
void MainWindow::setupTest() {
    setupQuestionsWidgets();
    setupNavMenu();
}

//!Здесь создаем страницы для stackedwidget:
//! - Вступление
//! - Тело
//! - Завершение работы
void MainWindow::setupQuestionsWidgets() {

    //!Добавление кол-во вопросов во вступление
    ui->state_text->setText("Вступление");
    QString str_intro_main_text{"Добро пожаловать на тест по вселенной Гарри Поттера. \n\nСправа предоставлено меню, для навигации по вопросам. \nСамая последня вкладка подтверждает завершение теста. \nЧтобы ознакомится с результатами нажмите ЗАКОНЧИТЬ \nна последней вкладке \n\nВ данном тесте: %1 Вопрсов \nУдачи!"};
    ui->intro_text_main->setText(str_intro_main_text.arg(count_questions));


    //!Создание виджетов на количество вопросов
    static int q_num{1};//id вопроса для radioBUttons
    for (int i = 0; i < count_questions; i++) {
        QWidget *questionWidget = new QWidget();
        QVBoxLayout *anss = new QVBoxLayout();

        //добавляем стилей
        QFont h1("Segou UI", 16);
        QFont norm_text("Segou UI", 12);
        QLabel *mainQuestion = new QLabel;
        mainQuestion->setFont(h1);
        mainQuestion->setWordWrap(1);

        anss->addWidget(mainQuestion);
        QGroupBox *box_rBs = new QGroupBox; //Будет хранить в себе radioButtons для удобного доступа к ним
        QVBoxLayout *inner_box_rBs = new QVBoxLayout;
        inner_boxes.append(inner_box_rBs);
        box_rBs->setLayout(inner_box_rBs);

        questionWidget->setLayout(anss);

        //Заполням вопросами
        mainQuestion->setText(questions_iter->next());

        inner_box_rBs->setProperty("question",q_num);

        //Заполням radioButtons вариантами ответов
        for (int i{0}; i < 4; i++) {
            if(questions_iter->hasNext() == 0) {
                qDebug() << "addMore answers";
                return;
            }
            else {
                QRadioButton *rB = new QRadioButton();
                radioButtons.append(rB);//добавляем адреса всех виджетов в список
                rB->setFont(norm_text);
                rB->setProperty("num", i); //ставим id для каждого варианта ответа, чтобы далее определять его в ответы пользователя
                rB->setText(questions_iter->next());
                inner_box_rBs->addWidget(rB);
            }
        }
        anss->addWidget(box_rBs);

        ui->pages->addWidget(questionWidget); //ставим виджет в stackedWidget
    }
    q_num = 1;
    for (int i{0}; i < radioButtons.size(); i++) {
        if(i % 4 == 0 && i != 0) {
            q_num++;
        }
        radioButtons[i]->setProperty("question", q_num); //ставим Id Для каждого варианта ответа, чтобы далее определять к какому вопросу он принадлежит
    }


    //!Добавляем в конец stackedWidget страницу завершения работы
    ui->pages->addWidget(end_page);

    //!Настройка страницы завершения работы
    QVBoxLayout *vbl = new QVBoxLayout();
    end_page->setLayout(vbl);

    QString str_complete_text_main{"Чтобы закончить тест, нажмите на кнопку ниже\n"};

    QLabel *str_comp_text_h1 = new QLabel("Complete test page");//заголовок страницы
    str_comp_text_h1->setFont(QFont("Segou UI", 20));

    QLabel *str_comp_text_main = new QLabel(str_complete_text_main); //Главный текст страницы зав-ия работы
    str_comp_text_main->setFont(QFont("Segou UI", 14));

    QPushButton *completeTest_btn = new QPushButton("Complete test"); //Кнопка для завершения работы
    completeTest_btn->setStyleSheet("color: black;");

    connect(completeTest_btn, &QPushButton::clicked, this, [&]() {
        QList<QRadioButton*> rBs = this->ui->pages->findChildren<QRadioButton*>();
        qDebug() << "size = "<< rBs.size();
        for(int i{0}; i < rBs.size(); i++) {
            //если radioButton выбран ставим в словарь ответов пользователя его ответы
            if (rBs[i]->isChecked()) {
                user_ans_map[rBs[i]->property("question").toInt()-1] = radioButtons[i]->property("num").toInt()+1;
            }
        }
        lightAnswers(); //вызываем при нажатии подсветку ответов
        showCorrectAnsDW(); // Показываем результат в диаологовом окне
    } );

    //! Загружаем картинку
    QPixmap *png = new QPixmap(":/images.jfif");
    QLabel *pngl = new QLabel;

    pngl->setPixmap(png->scaled(size(), Qt::IgnoreAspectRatio));

    //!Ставим в тело страницы завершения работы все виджеты
    vbl->addWidget(str_comp_text_h1, 0, Qt::AlignmentFlag::AlignTop | Qt::AlignmentFlag::AlignHCenter);
    vbl->addWidget(str_comp_text_main, 0, Qt::AlignmentFlag::AlignCenter);
    vbl->addWidget(pngl, 0);
    vbl->addWidget(completeTest_btn, 0, Qt::AlignmentFlag::AlignBottom | Qt::AlignmentFlag::AlignJustify);


}


void MainWindow::setupNavMenu() {
    //!Кнопка навигации для вступления
    QPushButton *intro_btn = new QPushButton("Intro");
    intro_btn->setStyleSheet("color: black;");

    this->ui->navMenu->addWidget(intro_btn,0,Qt::AlignmentFlag::AlignJustify);

    //при нажатии ставим текст и первую страницу
    connect(intro_btn, &QPushButton::clicked,this, [&](){
        this->ui->state_text->setText("Вступление");
        this->ui->pages->setCurrentIndex(0);
//        qDebug() << this->ui->pages->currentIndex(); //Логгирование
    } );

    //!Создаю кнопку навигации для каждого вопроса и виджет к каждой кнопке

    //Динамически называем и определяем все кнопки навигации
    for (int i = 0; i < count_questions; i++) {
        QString temp_str_question("Question: ");
        temp_str_question += QString::number(i+1);

        QPushButton *button = new QPushButton(temp_str_question);
        button->setStyleSheet("color: black;");
        button->setProperty("id", i+1); //ставим id для распознования sender'а к его вопросу
        //называем и привязывем каждую кнопку к соответсвующему ей виджету
        connect(button, &QPushButton::clicked, this, [&](){
            ui->state_text->setText(QString("Вопрос: %1").arg(this->sender()->property("id").toInt()));
            ui->pages->setCurrentIndex(this->sender()->property("id").toInt());
            this->current_question = this->sender()->property("id").toInt();

            //            qDebug() << sender()->property("id").toInt(); //логирование
//            qDebug() <<"Id sender: "<< this->sender()->property("id").toInt();
        });
        ui->navMenu->addWidget(button,0,Qt::Alignment::enum_type::AlignJustify);

    }

    //Кнопка navMenu завершения работы
    QPushButton *comp_btn = new QPushButton("Complete");
    comp_btn->setStyleSheet("color: black;");
    this->ui->navMenu->addWidget(comp_btn,0,Qt::AlignmentFlag::AlignJustify);

    connect(comp_btn, &QPushButton::clicked,this, [&](){
        this->ui->state_text->setText("Завершение работы");
        this->ui->pages->setCurrentWidget(end_page);
//        qDebug() <<"Index: "<< this->ui->pages->currentIndex(); //логирование
    } );
}

//!Подсвечиаем все варинты ответов в зависимости от верного / нет ответа
void MainWindow::lightAnswers() {
    //Красим все красным
    for (auto rb : radioButtons){
        rb->setStyleSheet("color: rgb(220, 20, 60)");
        rb->setEnabled(false);
    }
    //Определяем кол-во правильных ответов
    for(static int i{0}; i < count_questions; i++) {
        if(this->user_ans_map[i]
            == this->ans_map[i+1]) {
            right_answers++;
        }
    }
    //красим правильные ответы в зеленый цвет
    for(int i{1}; i < count_questions+1; i++) {
        for(int j{0}; j < 4; j++) {

            if(this->inner_boxes.at(i-1)->parent()->children().at(j+1)->property("num").toInt()+1 == ans_map[i-1]) {
                    this->inner_boxes.at(i-2)->itemAt(j)->widget()->setStyleSheet("color: rgb(0,128,0)");
            }
        }
    }
    this->inner_boxes.at(count_questions-1)->itemAt(ans_map[count_questions]-1)->widget()->setStyleSheet("color: rgb(0,128,0)");
//    qDebug() << "Right answers: " << right_answers; //логгирование
}
//Показываем диалоговое окно с результатом
void MainWindow::showCorrectAnsDW() {
    QMessageBox *d = new QMessageBox(end_page);
    d->setWindowTitle("Результат");
    d->setText(QString("Вы ответили правильно для %1 из %2 вопрсов").arg(right_answers).arg(count_questions));
    d->exec();
}
