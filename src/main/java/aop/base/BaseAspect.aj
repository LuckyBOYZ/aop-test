package aop.base;

public aspect BaseAspect {

    pointcut message(final String yourString, final Base baseClass):
            call(void aop.base.Base.doSomething(java.lang.String)) && args(yourString) && target(baseClass);

    before(final String yourString, final Base baseClass): message(yourString, baseClass) {
        System.out.println(":::BEFORE:::");
    }

    void around(final String yourString, final Base baseClass): message(yourString, baseClass) {
        System.out.println(":::AROUND:::");
        proceed(yourString, baseClass);
    }

    after(final String yourString, final Base baseClass): message(yourString, baseClass) {
        System.out.println(":::AFTER:::");
    }
}
