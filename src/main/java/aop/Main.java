package aop;

import aop.annotation.NoPermission;
import aop.annotation.PermissionToGetAPassword;
import aop.base.Base;

public class Main {
    public static void main(String[] args) {
        new Base().doSomething("doSomething");
        System.out.println("================================================");
        System.out.println("You should seeing the password because permission is set on true");
        new PermissionToGetAPassword().getPassword();
        System.out.println("================================================");
        System.out.println("You shouldn't seeing the password because permission is set on false");
        new NoPermission().tryToGetAPassword();
    }
}
