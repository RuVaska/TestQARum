﻿#language: ru
@ExportScenarios

@tree

Функционал: Заполнение шапки заказа

Как Менеджер по продаже я хочу
Заполнить шапку заказа 
чтобы проверить заполнение шапки заказа   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание заказа
* Создание документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'

Сценарий: Заполнение шапки заказа
* Заполнение шапки Заказа
	Когда открылось окно "Заказ (создание)"
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Животноводство ООО '
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'USD'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'

