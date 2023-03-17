﻿#language: ru

@tree

Функционал: Проверка расчета итоговой суммы Заказа

Как Менеджер по продажам я хочу
Проверить расчет итоговой суммы документа Заказ 
чтобы выполнить контроль   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка расчета итоговой суммы Заказа
* Открытие документа Заказ
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение таблицы Товары
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '25,18'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '16'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" содержит строки:
		| 'Цена'  | 'Количество' | 'Сумма'  |
		| '25,18' | '16'         | '402,88' |
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '13,66'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '13'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" содержит строки:
		| 'Цена'  | 'Количество' | 'Сумма'  |
		| '13,66' | '13'         | '177,58' |
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '79,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '27'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" содержит строки:
		| 'Цена'  | 'Количество' | 'Сумма'    |
		| '79,00' | '27'         | '2 133,00' |
* Проверка Итоговой суммы
	И элемент формы с именем "ТоварыИтогСумма" стал равен '2 713,46'
	
	
		
			


