package ua.edu.sumdu.ta.yaroslavkuts.lab;

/**
 * Produce appropriative handler to passed file's format.
 *
 * @version 1.0 16 Dec 2016
 * @author Yaroslav Kuts
 */
class ExcelHandlerFactory {
	
	/**
	 * Create and return new excel handler entity that correspond to file's format.
	 * @param file
	 * @param sheetName
	 * @return appropriative excel handler
	 * @throws IllegalArgumentException if file's format not equal to 'xls' or 'xlsx'
	 */
	static ExcelHandler getExcelHandler(String file, String sheetName) throws IllegalArgumentException {
		ExcelHandler handler = null;
		if (getFileFormat(file).equals("xls")) {
			handler = new XLSHandler(file, sheetName);
		} else if (getFileFormat(file).equals("xlsx")) {
			handler = new XLSXHandler(file, sheetName);
		} else {
			throw new IllegalArgumentException("Wrong file format(it must be 'xls' or 'xlsx')");
		}
		return handler;
	}
	
	/**
	 * Extract and return format from file's name.
	 * @param file
	 * @return string representation of file's format
	 * @throws IllegalArgumentException if file's name does not contain format
	 */
	private static String getFileFormat(String file) throws IllegalArgumentException {
		String[] arr = file.split("\\.");
		if (arr.length == 0) throw new IllegalArgumentException("File name must contain format after point char"); 
		return arr[arr.length - 1];
	}
}