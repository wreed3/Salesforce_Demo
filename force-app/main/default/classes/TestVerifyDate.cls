@isTest
private class TestVerifyDate {

    @isTest static void checkDatesWithin30Test(){
        Date date1 = Date.newInstance(2024, 01,01);
        Date date2 = Date.newInstance(2024, 01,29);
        Date checkDate = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, checkDate);
    }
    @isTest static void checkDatesNotWithin30Test(){
        Date date1 = Date.newInstance(2024, 01,01);
        Date date2 = Date.newInstance(2024, 03,29);
        Date checkDate = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(Date.newInstance(2024, 01,31), checkDate);
    }
        @isTest static void DatesWithin30Test(){
        Date date1 = Date.newInstance(2024, 01,21);
        Date date2 = Date.newInstance(2024, 01,01);
        Date checkDate = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(Date.newInstance(2024, 01,31), checkDate);
    }
}