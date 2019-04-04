#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "mapvariables.h"
#include <QQmlProperty>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    static QList<QObject*> list;
    static int count = 0;
    if(count++)
     delete &engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    list = engine.rootObjects();
    qDebug("%d",list.size());
    if(list.size() != 1)
        return;
    root = list.front();

}

void MainWindow::addPoint(double lat,double lon){
    latitude = QQmlProperty(root,"lat");
    longitude = QQmlProperty(root,"lon");
    latitude.write(lat);
    longitude.write(lon);
    QMetaObject::invokeMethod(root,"addMapPoint");
}

void MainWindow::on_pushButton_2_clicked()
{
    static double lat = -22.0182298;
    static double lon = -47.95;
    addPoint(lat,lon);
    lat +=0.005;
    lon +=0.005;
}
