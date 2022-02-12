package aop.annotation;

public aspect PermissionAspect {

    pointcut password(final Permission permission):
            @annotation(permission);

    void around(final Permission permission): password(permission) {
        if (permission.isLocked()) {
            proceed(permission);
        } else {
            System.out.println("You can't see the password because you don't have a permission!");
        }
    }
}
