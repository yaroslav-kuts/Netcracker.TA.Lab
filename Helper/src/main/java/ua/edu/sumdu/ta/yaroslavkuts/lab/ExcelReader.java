package ua.edu.sumdu.ta.yaroslavkuts.lab;

public class ExcelReader {
	
	private ExcelHandler handler;
	
	public ExcelReader(String file, String sheetName) throws IllegalArgumentException {
		if (file == null || sheetName == null ||
				file.equals("") || sheetName.equals("")) {
			throw new IllegalArgumentException("File's name or sheet's name cannot be null or empty");
		} else {
			handler = ExcelHandlerFactory.getExcelHandler(file, sheetName);
		}
	}
	
	public String getCellValue(int rowIndex, int cellIndex) {
		return handler.getCell(rowIndex, cellIndex).toString();
	}
	
	public int getNumberOfFilledRows() {
		return handler.getNumberOfFilledRows();
	}
}