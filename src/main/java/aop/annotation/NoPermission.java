package aop.annotation;

public class NoPermission {

    @Permission
    public void tryToGetAPassword() {
        System.out.println("Password: qwerty");
    }
}
