#include "widget.h"

Widget* Widget::w = 0;

Widget::Widget(QWidget *parent)
  : QWidget(parent)
{
  db = QSqlDatabase::addDatabase("QSQLITE");
  db.setDatabaseName(file);
  if ( !QFile::exists( file ) || !db.open() )
    qDebug() << "Datenbank nicht gefunden";

  QSqlRelationalTableModel *table = new QSqlRelationalTableModel(parent,db);
  table->setTable("finance");
  table->setRelation(6,QSqlRelation("category","id","name"));
  table->select();
  QTableView *tableCard = new QTableView;
  tableCard->setModel(table);
  tableCard->hideColumn(0);


  QVBoxLayout *layout = new QVBoxLayout(this);
  this->setMinimumSize(1000,500);
  layout->addWidget(tableCard);
  setLayout(layout);
}

Widget::~Widget()
{
  if ( db.isOpen() )
    db.close();
}

Widget*Widget::create()
{
  if (w == 0)
    w = new Widget;
  return w;
}
