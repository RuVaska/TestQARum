﻿#language: ru

@tree

Функционал: Проверка прикрепления файлов к элементу справочника Товары

Как Тестировщик я хочу
проверить прикрепление файлов к Товару 
чтобы была возможность хранить изображения товаров   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверить прикрепление файла
* Закроем все окна приложения
	И я закрываю все окна клиентского приложения
* Открыть справочник Товары
	И Я открываю навигационную ссылку "e1cib/list/Справочник.Товары"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
* Открыть Товар
	И в таблице "Список" я перехожу к строке:
		| 'Вид'   | 'Код'       | 'Наименование' |
		| 'Товар' | '000000040' | 'Sony К3456P'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Sony К3456P (Товар)'
* Файлы
	И В текущем окне я нажимаю кнопку командного интерфейса 'Файлы'
	И я нажимаю на кнопку с именем 'Создать'
	Тогда открылось окно 'Файл (создание)'
* Выбор файла
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	И я выбираю файл "C:\Vasyl\TestsQA\Repository\TestQARum\Features\Финал\Рисунки\2.png" ВК
* Запись прикрепленного файла 
	Тогда открылось окно '2.png (Файл)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна '2.png (Файл)' в течение 20 секунд

Сценарий: Проверить прикрепление нескольких файлов
* Закроем все окна приложения
	И я закрываю все окна клиентского приложения
* Открыть справочник Товары
	И Я открываю навигационную ссылку "e1cib/list/Справочник.Товары"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
* Открыть Товар
	И в таблице "Список" я перехожу к строке:
		| 'Вид'   | 'Код'       | 'Наименование' |
		| 'Товар' | '000000040' | 'Sony К3456P'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Sony К3456P (Товар)'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Файлы'
* Форма Загрузить файлы
	И я нажимаю на кнопку с именем 'ЗагрузитьФайлы'
	Тогда открылось окно 'Форма загрузки файлов'
* Выбор файлов
	И в таблице "СписокФайлов" я нажимаю на кнопку с именем 'ДобавитьФайлы'
	И я выбираю файл "C:\Vasyl\TestsQA\Repository\TestQARum\Features\Финал\Рисунки\3.png" ВК
	И в таблице "СписокФайлов" я нажимаю на кнопку с именем 'ДобавитьФайлы'
	И я выбираю файл "C:\Vasyl\TestsQA\Repository\TestQARum\Features\Финал\Рисунки\4.png" ВК
	Тогда открылось окно 'Форма загрузки файлов'
	И я нажимаю на кнопку с именем 'Загрузить'

Сценарий: Проверить установку картинки товара
* Закроем все окна приложения
	И я закрываю все окна клиентского приложения
* Открыть справочник Товары
	И Я открываю навигационную ссылку "e1cib/list/Справочник.Товары"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
* Открыть Товар
	И в таблице "Список" я перехожу к строке:
		| 'Вид'   | 'Код'       | 'Наименование' |
		| 'Товар' | '000000040' | 'Sony К3456P'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Sony К3456P (Товар)'
* Указание картинки товара
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '4.png'        |
	И в таблице "Список" я выбираю текущую строку
	Когда открылось окно 'Sony К3456P (Товар) *'
* Запись товара
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Sony К3456P (Товар) *' в течение 20 секунд
	
	