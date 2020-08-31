<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
class Employee extends CI_Controller {
	public function __construct() {
        parent::__construct();
		$this->load->model('EmployeeModel');
    }    
	public function index() {
        $data['page'] = 'export-excel';
        $data['title'] = 'Export Excel data';
        $data['employeeData'] = $this->EmployeeModel->employeeList();
		$this->load->view('employee', $data);
    }
	public function createExcel() {
		$fileName = 'employee.xlsx';  
		$employeeData = $this->EmployeeModel->employeeList();
		$spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
      /*   $sheet->setCellValue('A1', 'Hello World !'); */
		/* $sheet->setCellValue('A1', 'Id'); */
        $sheet->setCellValue('A1', 'Name');
        $sheet->setCellValue('B1', 'Email');
        $sheet->setCellValue('C1', 'Phone');
		
		$sheet->setCellValue('D1', 'Postal Add');
        $sheet->setCellValue('E1', 'Permanent Add');
        $sheet->setCellValue('F1', 'Department');
		 $sheet->setCellValue('G1', 'Mananger');
		 $sheet->setCellValue('H1', 'status');
      
        $rows = 2;
        foreach ($employeeData as $val){
       
            $sheet->setCellValue('A' . $rows, $val['name']);
            $sheet->setCellValue('B' . $rows, $val['email']);
          
			$sheet->setCellValue('C' . $rows, $val['phone']);
			
			  $sheet->setCellValue('D' . $rows, $val['employee_postal_address']);
            $sheet->setCellValue('E' . $rows, $val['employee_permanent_address']);
          
			$sheet->setCellValue('F' . $rows, $val['department_tittle']);
			$sheet->setCellValue('G' . $rows, $val['dep_manager']);
			
			$sheet->setCellValue('H' . $rows, $val['status']);
           
            $rows++;
        } 
        $writer = new Xlsx($spreadsheet);
		$writer->save("upload/".$fileName);
		header("Content-Type: application/vnd.ms-excel");
        redirect(base_url()."/upload/".$fileName);              
    }    
}
?>