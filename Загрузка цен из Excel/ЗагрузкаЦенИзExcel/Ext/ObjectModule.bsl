﻿Функция СведенияОВнешнейОбработке() Экспорт

	ПараметрыРегистрации = Новый Структура;
	
	МассивНазначений = Новый Массив;
	МассивНазначений.Добавить("Документ.УстановкаЦенНоменклатуры");
	
	
	ПараметрыРегистрации.Вставить("Вид", "ЗаполнениеОбъекта"); //возможны варианты - ЗаполнениеОбъекта, ДополнительныйОтчет, СозданиеСвязанныхОбъектов, 
	ПараметрыРегистрации.Вставить("Назначение", МассивНазначений);
	ПараметрыРегистрации.Вставить("Наименование", "Загрузка цен из Excel"); //имя под kt обработка зарегистрирована будет в справочнике внешних обработок
	ПараметрыРегистрации.Вставить("Версия", "1.1");
	ПараметрыРегистрации.Вставить("БезопасныйРежим", Ложь);
	ПараметрыРегистрации.Вставить("Информация", "Загрузка цен из Excel");
	
	//команды
	ТаблицаКоманд = Новый ТаблицаЗначений;
	ТаблицаКоманд.Колонки.Добавить("Представление"); //как будет выглядеть описание печ.формы для пользователя
	ТаблицаКоманд.Колонки.Добавить("Идентификатор"); //имя нашего макета
	ТаблицаКоманд.Колонки.Добавить("Использование"); //ВызовСерверногоМетода
	ТаблицаКоманд.Колонки.Добавить("ПоказыватьОповещение"); //Истина
	ТаблицаКоманд.Колонки.Добавить("Модификатор"); //ПечатьМХL
	
	НоваяКоманда = ТаблицаКоманд.Добавить();
	НоваяКоманда.Представление = "Загрузка цен из Excel";
	НоваяКоманда.Идентификатор = "ЗагрузкаЦенИзExcel"; //Внешняя печатная форма
	НоваяКоманда.Использование = "ОткрытиеФормы";//"ВызовКлиентскогоМетода"; //здесь можно прописать использование как серверного так и клиентского, отличие в том, что серверный метод будет обращаться к экспортной процедуре из модуля объекта, клиентский - к экспортной процедуре из модуля формы объекта
	НоваяКоманда.ПоказыватьОповещение = Истина;
	НоваяКоманда.Модификатор = "";
	
	ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
	
	Возврат ПараметрыРегистрации;


КонецФункции
