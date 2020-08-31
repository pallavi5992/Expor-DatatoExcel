<?php
if (!defined('BASEPATH'))
exit('No direct script access allowed');
class EmployeeModel extends CI_Model {
	public function employeeList() {
		/* $this->db->select(array('id', 'name', 'email', 'phone','status'));
		$this->db->from('table_employee');
		
		$query = $this->db->get();
		return $query->result_array();
		 */
		$this->db->select('emp.name, emp.phone, emp.email,emp.status, empadd.employee_postal_address,empadd.employee_permanent_address,empdep.department_tittle,empdep.dep_manager');
        $this->db->from('table_employee emp');
        $this->db->join('table_employee_address empadd', "emp.id = empadd.emp_id");
        $this->db->join('table_employee_department empdep', 'emp.id = empdep.emp_id');
       
        $get = $this->db->get();
        return $get->result_array();
	}
}
?>