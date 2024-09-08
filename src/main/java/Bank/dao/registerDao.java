
package Bank.dao;

import java.util.List;

import Bank.model.Register;
import Bank.model.credit;
import Bank.model.recharge;

public interface registerDao {
	   int createRecord(List<Register> reglst);
	   List<Register> retrive(String username,String password);
	   boolean Login(Register reg);
	  int update(Register reg);
	  int delete(int accNo);
	   List<Register> list();
	   int AddMoney(credit cred);
	   int withdrawMoney(credit cred);
	   int rechargePhone(recharge rech);
	   List<recharge> rechlist();
}
