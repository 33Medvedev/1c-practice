﻿Процедура ОбработкаПроведения(Отказ, РежимПроведения)
	
	//Если НЕ ЗаявкаВыполнена тогда
	//	
	//	Отказ = Истина;
	//	
	//	Сообщить("Провести можно только после выполнения заявки."); 
	//	
	//КонецЕсли;

	
	Если НЕ Справочники.Клиенты.НайтиПоРеквизиту("НомерТелефона",ТелефонКлиента).НомерТелефона = ТелефонКлиента тогда
		
		к = Справочники.Клиенты.СоздатьЭлемент();
		к.Наименование = Клиент;
		к.Почта = Почта;
		к.Адрес = Адрес;
		к.НомерТелефона = ТелефонКлиента;  
		к.Записать();    
			
	КонецЕсли;
	
КонецПроцедуры
