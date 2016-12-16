package ua.edu.sumdu.ta.yaroslavkuts.lab;

import org.junit.*;

public class ExcelReaderTest {
	
	ExcelReader reader;
	
	@Test
	public void getLoginTest() {
		Assert.assertEquals(reader.getCellValue(1, 0), "user1");
	}
	
	@Test
	public void getPasswordTest() {
		Assert.assertEquals(reader.getCellValue(1, 1), "myPass");
	}
	
	@Test
	public void getURLTest() {
		Assert.assertEquals(reader.getCellValue(1, 2), "http://s1.web.sumdu.edu.ua:8080/login.jsp");
	}
	
	@Test
	public void getLengthTest() {
		Assert.assertEquals(reader.getNumberOfFilledRows(), 3);
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void notExcelFormatTest() {
		reader = new ExcelReader("data.doc", "login_test_data");
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void passNullFileNameTest() {
		reader = new ExcelReader(null, "login_test_data");
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void passEmptyFileNameTest() {
		reader = new ExcelReader("", "login_test_data");
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void withoutFormtarFileNameTest() {
		reader = new ExcelReader("data", "login_test_data");
	}
	
	@Test(expected = NullPointerException.class)
	public void nonExistingSheetPassTest() {
		reader = new ExcelReader("src/test/resources/data.xlsx", "test_data");
	}
	
	@Test(expected = IndexOutOfBoundsException.class)
	public void minusIndexPassInGetCell() {
		reader.getCellValue(-1, 1);
	}
	
}