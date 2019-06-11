# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Environment.create({tags:"test,stable", digest:"c4ca4238a0b923820dcc509a6f75849b",active:true})
Failure.create(message:"failure message",stack_trace:"java.lang.RuntimeException: java.lang.RuntimeException: Exception during GettDriver initialization: element_not_found
        at com.gettaxi.automation.gettaxi_auto_infra.together.GettTogetherAssetsFactory.createUIDriverAtDepot(GettTogetherAssetsFactory.java:119)
        at com.gettaxi.automation.tests.together.E2EShuttleTests.DriverMultiPickUp(E2EShuttleTests.java:85)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:498)
        at org.junit.internal.runners.TestMethod.invoke(TestMethod.java:66)
        at org.junit.internal.runners.MethodRoadie.runTestMethod(MethodRoadie.java:105)
        at org.junit.internal.runners.MethodRoadie$2.run(MethodRoadie.java:86)
        at org.junit.internal.runners.MethodRoadie.runBeforesThenTestThenAfters(MethodRoadie.java:94)
        at org.junit.internal.runners.MethodRoadie.runTest(MethodRoadie.java:84)
        at org.junit.internal.runners.MethodRoadie.run(MethodRoadie.java:49)
        at org.junit.internal.runners.JUnit4ClassRunner.invokeTestMethod(JUnit4ClassRunner.java:98)
        at org.junit.internal.runners.JUnit4ClassRunner.runMethods(JUnit4ClassRunner.java:61)
        at org.junit.internal.runners.JUnit4ClassRunner$1.run(JUnit4ClassRunner.java:54)
        at org.junit.internal.runners.ClassRoadie.runUnprotected(ClassRoadie.java:34)
        at org.junit.internal.runners.ClassRoadie.runProtected(ClassRoadie.java:44)
        at org.junit.internal.runners.JUnit4ClassRunner.run(JUnit4ClassRunner.java:52)
        at junit.framework.JSystemJUnit4ClassRunner.run(JSystemJUnit4ClassRunner.java:250)
        at junit.framework.JUnit4TestAdapterForJSystem.run(JUnit4TestAdapterForJSystem.java:86)
        at com.aqua.anttask.jsystem.JUnitTestRunner.run(JUnitTestRunner.java:461)
        at com.aqua.anttask.jsystem.JSystemTask.executeInVM(JSystemTask.java:1388)
        at com.aqua.anttask.jsystem.JSystemTask.execute(JSystemTask.java:957)
        at com.aqua.anttask.jsystem.JSystemTask.executeOrQueue(JSystemTask.java:1806)
        at com.aqua.anttask.jsystem.JSystemTask.execute(JSystemTask.java:897)
        at org.apache.tools.ant.UnknownElement.execute(UnknownElement.java:288)
        at sun.reflect.GeneratedMethodAccessor5.invoke(Unknown Source)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:498)
        at org.apache.tools.ant.dispatch.DispatchUtils.execute(DispatchUtils.java:105)
        at org.apache.tools.ant.Task.perform(Task.java:348)
        at org.apache.tools.ant.Target.execute(Target.java:357)
        at org.apache.tools.ant.Target.performTasks(Target.java:385)
        at org.apache.tools.ant.Project.executeSortedTargets(Project.java:1329)
        at org.apache.tools.ant.helper.SingleCheckExecutor.executeTargets(SingleCheckExecutor.java:38)
        at org.apache.tools.ant.Project.executeTargets(Project.java:1181)
        at org.apache.tools.ant.taskdefs.Ant.execute(Ant.java:416)
        at net.sf.antcontrib.logic.AntCallBack.execute(AntCallBack.java:54)
        at org.apache.tools.ant.UnknownElement.execute(UnknownElement.java:288)
        at sun.reflect.GeneratedMethodAccessor5.invoke(Unknown Source)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:498)
        at org.apache.tools.ant.dispatch.DispatchUtils.execute(DispatchUtils.java:105)
        at org.apache.tools.ant.Task.perform(Task.java:348)
        at org.apache.tools.ant.Target.execute(Target.java:357)
        at org.apache.tools.ant.Target.performTasks(Target.java:385)
        at org.apache.tools.ant.Project.executeSortedTargets(Project.java:1329)
        at org.apache.tools.ant.Project.executeTarget(Project.java:1298)
        at org.apache.tools.ant.helper.DefaultExecutor.executeTargets(DefaultExecutor.java:41)
        at org.apache.tools.ant.Project.executeTargets(Project.java:1181)
        at org.apache.tools.ant.Main.runBuild(Main.java:698)
        at org.apache.tools.ant.Main.startAnt(Main.java:199)
        at org.apache.tools.ant.launch.Launcher.run(Launcher.java:257)
        at org.apache.tools.ant.launch.Launcher.main(Launcher.java:104)
Caused by: java.lang.RuntimeException: Exception during GettDriver initialization: element_not_found
        at com.gettaxi.automation.gettaxi_auto_infra.supply.GettDriver.<init>(GettDriver.java:92)
        at com.gettaxi.automation.gettaxi_auto_infra.supply.GettDriver.<init>(GettDriver.java:51)
        at com.gettaxi.automation.gettaxi_auto_infra.together.GettTogetherDriver.<init>(GettTogetherDriver.java:59)
        at com.gettaxi.automation.gettaxi_auto_infra.together.GettTogetherDriver.<init>(GettTogetherDriver.java:53)
        at com.gettaxi.automation.gettaxi_auto_infra.together.GettTogetherAssetsFactory.createUIDriverAtDepot(GettTogetherAssetsFactory.java:110)
        ... 53 more
Caused by: java.lang.Exception: element_not_found
        at com.gettaxi.automation.gettaxi_auto_infra.web.AbstractPage.waitForElement(AbstractPage.java:775)
        at com.gettaxi.automation.gettaxi_auto_infra.web.AbstractPage.waitForVisibleAndEnabledElement(AbstractPage.java:729)
        at com.gettaxi.automation.gettaxi_auto_infra.web.AbstractPage.setText(AbstractPage.java:211)
        at com.gettaxi.automation.gettaxi_auto_infra.mobile.iphone.AppiumDriverImpl.setText(AppiumDriverImpl.java:50)
        at com.gettaxi.automation.gettaxi_auto_infra.driverBox.DriverBoxAbstractService.enterPhoneAndConfCodeClickLogin(DriverBoxAbstractService.java:538)
        at com.gettaxi.automation.gettaxi_auto_infra.driverBox.DriverBoxAbstractService.login(DriverBoxAbstractService.java:455)
        at com.gettaxi.automation.gettaxi_auto_infra.supply.GettDriver.<init>(GettDriver.java:78)
        ... 57 more")
Team.create(name:"Growth",description:"team description",active:true)
User.create(name:"moshea",email:"moshea@gett.com",notify_in_mail:true,notify_in_sms:false,notify_in_chat:false,active:true,chat_username:"moshea",team_id:1)
TeztRecord.create(name:"testThis",class_name:"com.gett.tests",tags:"first,api",active:true,user_id:1,team_id:1,flaky:false,risk:13)
TeztRun.create(status:"passed",failure_id:1,environment_id:1,duration:50,machine:"moshe_mac",debug:true,assets:"Driver:412",tezt_record_id:1)

