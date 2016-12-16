package ua.edu.sumdu.ta.yaroslavkuts.lab;

import org.apache.poi.ss.usermodel.Cell;

/**
 * Enable do some trivial operations with particular excel worksheet.
 *
 * @version 1.0 16 Dec 2016
 * @author Yaroslav Kuts
 */
abstract class ExcelHandler {
	
	public abstract Cell getCell(int rowIndex, int cellIndex);
	
	public abstract int getNumberOfFilledRows();
}