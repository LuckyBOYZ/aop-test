package aop.annotation;

public class PermissionToGetAPassword {

    @Permission(isLocked = true)
    public void getPassword() {
        System.out.println("Password: qwerty");
    }
}
