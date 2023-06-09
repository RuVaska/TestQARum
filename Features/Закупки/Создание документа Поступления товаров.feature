﻿#language: ru

@tree

Функционал: Создание документа Поступление товаров

Как Менеджер по закупкам я хочу
Создание документа Поступление товаров 
чтобы Чтобы поставить тавар на учет   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание документа Поступление товаров
// создание документа
* Открытие формы создания документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров'
	Когда открылось окно 'Поступления товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Поступление товара (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	Тогда элемент формы с именем "Склад" стал равен 'Большой'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'USD'
	И я нажимаю кнопку выбора у поля с именем "Поставщик"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000006' | 'Пантера АО'   |
	И в таблице "Список" я выбираю текущую строку
* Заполнение Товаров
	Тогда открылось окно 'Поступление товара (создание) *'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000006' | 'Ботинки'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Поступление товара (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '20,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
* Проверка заполнения таблицы товаров
	Тогда таблица "Товары" содержит строки:
		| 'Товар'   | 'Артикул' | 'Цена'     | 'Количество' | 'Сумма'     |
		| 'Ботинки' | 'ОБ-003'  | '2 000,00' | '20,00'      | '40 000,00' |
	И я нажимаю на кнопку 'Записать'
* Номер
	И я запоминаю значение поля "Номер" как "$Номер$"
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Поступление товара (создание) *' в течение 20 секунд
* Проверка созданного документа
	И таблица "Список" содержит строки :
		| 'Номер'     |
		| '$Номер$' |
	
Сценарий: проверка наличия в справочнике Номенклатуры Торт
	И В командном интерфейсе я выбираю 'Продажи' 'Товары'
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И таблица "Список" содержит строки :
		| 'Наименование' |
		| 'Торт'         |