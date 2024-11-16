package models;

import java.io.Serializable;

public class RoleModel implements Serializable {

    private static final long serialVersionUID = 1L;

    private String roleId;
    private String roleName;

    public RoleModel(String roleId, String roleName) {
        this.roleId = roleId;
        this.roleName = roleName;
    }

    public RoleModel() {
        super();
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public String toString() {
        return "RoleModel [roleId=" + roleId + ", roleName=" + roleName + "]";
    }

}
