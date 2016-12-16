package ua.edu.sumdu.ta.yaroslavkuts.lab;

/**
 * Tool that enable read data from specified excel worksheet through cell's coordinates.
 *
 * @version 1.0 16 Dec 2016
 * @author Yaroslav Kuts
 */
public class ExcelReader {
	
	private ExcelHandler handler;
	
	/**
	 * Create new reader for appropriative file format.
	 * @param file
	 * @param sheetName
	 * @throws IllegalArgumentException if file's name or sheet's name is null or empty"
	 */
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