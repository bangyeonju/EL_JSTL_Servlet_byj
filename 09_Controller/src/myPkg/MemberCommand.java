package myPkg;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberCommand {
	void excute(HttpServletRequest request, HttpServletResponse response);//ȣ��!
}
//�������̽� Ư¡
/*
 �߻�޼��常 ����.
 �߻�޼��� : ���ǵ����ʴ�(�ϼ����� ����) �޼���
 �߻�Ŭ���� , interface ����
*/