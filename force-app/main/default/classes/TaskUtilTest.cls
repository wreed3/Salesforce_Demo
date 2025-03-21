@isTest
private class TaskUtilTest {
    @isTest
    static void testTaskPriority(){
        String pri = TaskUtil.getTaskPriority('NY');
        System.assertEquals('Normal', pri);
    }
    @isTest
    static void testTaskHighPriority(){
        String pri = taskUtil.getTaskPriority('CA');
        System.assertEquals('High', pri);
    }
    @isTest
    static void testTaskInvalidPriority(){
        String pri = taskUtil.getTaskPriority('Montana');
        System.assertEquals(null, pri);
    }
    @isTest
    static void testTaskBlankPriority(){
        String pri = taskUtil.getTaskPriority('');
        System.assertEquals(null, pri);
    }
    

}