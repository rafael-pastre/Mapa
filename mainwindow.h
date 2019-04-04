#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlProperty>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    QGuiApplication map_app();    //QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    void addPoint(double lat,double lon);

private slots:
    void on_pushButton_clicked();

    void on_pushButton_2_clicked();

private:
    Ui::MainWindow *ui;
    QObject* root;
    QQmlProperty latitude;
    QQmlProperty longitude;
};

#endif // MAINWINDOW_H
