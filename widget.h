#ifndef WIDGET_H
#define WIDGET_H

#include "config.h"
#include <QtWidgets>
#include <QSql>
#include <QSqlDatabase>
#include <QSqlRelationalTableModel>

class Widget : public QWidget
{
    Q_OBJECT
  private:
    static Widget* w;
    QSqlDatabase db;
  public:
    ~Widget();
    static Widget* create();
  protected:
    Widget(QWidget *parent = 0);
};

#endif // WIDGET_H
