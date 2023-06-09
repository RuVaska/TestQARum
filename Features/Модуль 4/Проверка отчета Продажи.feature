﻿#language: ru

@tree

Функционал: Проверка отображения возврата в отчете Продажи

Как Тестировщик я хочу
Проверить отображение возврата в отчете Продажи 
чтобы убедиться, что отчет работает правильно   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка отображения возврата в отчете Продажи
* Открытие отчета
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales?vrn=Default"
* Настройка периода
	Когда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
		| 'Использование' | 'Параметр' |
		| 'Да'            | 'Период'   |
	И в таблице "SettingsComposerSettingsDataParameters" я изменяю флаг с именем 'SettingsComposerSettingsDataParametersUse'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormEndEdit'
	Тогда открылось окно 'D2001 Продажи'
* Формирование отчета	
	И я нажимаю на кнопку с именем 'FormGenerate'
* Проверка
	Дано Табличный документ "Result" равен макету "Отчет Продажи" по шаблону
	

