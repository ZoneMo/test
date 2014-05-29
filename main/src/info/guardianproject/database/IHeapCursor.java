package info.guardianproject.database;

import info.guardianproject.database.sqlcipher.SQLiteCursorInJava$ICursorDataItemCreator;
import android.database.Cursor;
import android.util.SparseArray;

public interface IHeapCursor extends Cursor
{
    boolean checkIsCacheUseful(int p0);
    
    boolean containKey(Object p0);
    
    CursorDataItem getItem(int p0);
    
    CursorDataItem getItemByKey(Object p0);
    
    @SuppressWarnings("rawtypes")
	SparseArray[] getPosistionMaps();
    
    boolean hasLoadAllData();
    
    boolean isCacheUseful();
    
    boolean notifyChange(Object p0, CursorDataItem p1);
    
    void putValue(int p0, Object p1);
    
    void setAutoBuildData(boolean p0);
    
    void setDataCreator(SQLiteCursorInJava$ICursorDataItemCreator p0);
    
    void setPageSize(int p0);
}
