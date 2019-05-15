package ru.oskruna.knowledgebase;

public class TestLogic {
   /* function doGet(e) {
        if(e.queryString !== '' && e.parameter.a == 1) return HtmlService.createHtmlOutputFromFile('knowledge-base');
        if(e.queryString !== '' && e.parameter.p1 != "") {
            var sheet = SpreadsheetApp.openById("1GRCWFDUAoYyhdAz83Z-_UCputzRW65aXzlq4q-1SI8s").getSheetByName('IN PROGRESS');
            for (var i = 4; i < 20; i++){
                if (sheet.getRange("A"+i).getValue() == ""){

                    var problem = e.parameter.p1;
                    var autorSolve = e.parameter.p2;
                    var autor = e.parameter.p3;

                    sheet.getRange("A"+i).setValue(problem);
                    sheet.getRange("B"+i).setValue(autorSolve);
                    sheet.getRange("H"+i).setValue(autor);

                    // var problem = sheet.getRange(i, 1).getDisplayValue();
                    // var autorSolve = sheet.getRange(i, 2).getDisplayValue();
                    // var autor = sheet.getRange(i, 8).getDisplayValue();

                    var message = "    Описание ошибки:\n " + problem
                            + "\n\n    Предложенное решение:\n " + autorSolve
                            + "\n\n    Автор обращения:  " + autor
                            + "\n\n    Перейти к разбору:  https://goo.gl/hBSL2N";
                    var subject = "Поступило новое обращение в 'Диагностика нетиповых сбоев'";
                    var spreadsheet2 = SpreadsheetApp.getActiveSpreadsheet().getSheetByName('ADDRESS BOOK');
                    var email = spreadsheet2.getRange("D2").getDisplayValue();

                    MailApp.sendEmail(email, subject, message);

                    return HtmlService.createHtmlOutputFromFile('confirm');
                    break;
                }
            }
        }
        return HtmlService.createHtmlOutputFromFile('index');
    }

    function doPost(e) {
        var sheet = SpreadsheetApp.openById("1GRCWFDUAoYyhdAz83Z-_UCputzRW65aXzlq4q-1SI8s").getSheetByName('IN PROGRESS');

        if(e.parameter.p1 != "") {
            for (var i = 4; i < 20; i++){
                if (sheet.getRange("A"+i).getValue() == ""){
                    sheet.getRange("A"+i).setValue(e.parameter.p1);
                    sheet.getRange("B"+i).setValue(e.parameter.p2);
                    e.parameter.p1 = '';
                    e.parameter.p2 = '';
                    break;
                }
            }
        }
        return HtmlService.createHtmlOutputFromFile('index');
    }

    function returnCellValue(range1) {
        return SpreadsheetApp.openById('1GRCWFDUAoYyhdAz83Z-_UCputzRW65aXzlq4q-1SI8s').getSheetByName('IN PROGRESS').getRange(range1).getValues();
    }

    function returnCellValue2(range1) {
        return SpreadsheetApp.openById('1GRCWFDUAoYyhdAz83Z-_UCputzRW65aXzlq4q-1SI8s').getSheetByName('SOLVED').getRange(range1).getValues();
    }
*/
}
