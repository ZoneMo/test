package info.guardianproject.database;

import android.content.Context;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class CursorAdapter extends BaseAdapter
  implements Filterable
{
  protected boolean mAutoRequery;
  protected CursorAdapter.ChangeObserver mChangeObserver;
  protected Context mContext;
  protected Cursor mCursor;
  protected DataSetObserver mDataSetObserver = new CursorAdapter.MyDataSetObserver(this, null);
  protected boolean mDataValid;
  protected FilterQueryProvider mFilterQueryProvider;
  protected int mRowIDColumn;

  public CursorAdapter(Context paramContext, Cursor paramCursor)
  {
    init(paramContext, paramCursor, true);
  }

  public CursorAdapter(Context paramContext, Cursor paramCursor, boolean paramBoolean)
  {
    init(paramContext, paramCursor, paramBoolean);
  }

  public abstract void bindView(View paramView, Context paramContext, Cursor paramCursor);

  public void changeCursor(Cursor paramCursor)
  {
    if (paramCursor == this.mCursor)
      return;
    if (this.mCursor != null)
    {
      this.mCursor.unregisterContentObserver(this.mChangeObserver);
      this.mCursor.unregisterDataSetObserver(this.mDataSetObserver);
      this.mCursor.close();
    }
    this.mCursor = paramCursor;
    if (paramCursor != null)
    {
      paramCursor.registerContentObserver(this.mChangeObserver);
      paramCursor.registerDataSetObserver(this.mDataSetObserver);
      this.mRowIDColumn = paramCursor.getColumnIndexOrThrow("_id");
      this.mDataValid = true;
      notifyDataSetChanged();
      return;
    }
    this.mRowIDColumn = -1;
    this.mDataValid = false;
    notifyDataSetInvalidated();
  }

  public CharSequence convertToString(Cursor paramCursor)
  {
    if (paramCursor == null)
      return "";
    return paramCursor.toString();
  }

  public int getCount()
  {
    if ((this.mDataValid) && (this.mCursor != null))
      return this.mCursor.getCount();
    return 0;
  }

  public Cursor getCursor()
  {
    return this.mCursor;
  }

  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.mDataValid)
    {
      this.mCursor.moveToPosition(paramInt);
      if (paramView == null)
        paramView = newDropDownView(this.mContext, this.mCursor, paramViewGroup);
      bindView(paramView, this.mContext, this.mCursor);
      return paramView;
    }
    return null;
  }

  public FilterQueryProvider getFilterQueryProvider()
  {
    return this.mFilterQueryProvider;
  }

  public Object getItem(int paramInt)
  {
    if ((this.mDataValid) && (this.mCursor != null))
    {
      this.mCursor.moveToPosition(paramInt);
      return this.mCursor;
    }
    return null;
  }

  public long getItemId(int paramInt)
  {
    long l = 0L;
    if ((this.mDataValid) && (this.mCursor != null) && (this.mCursor.moveToPosition(paramInt)))
      l = this.mCursor.getLong(this.mRowIDColumn);
    return l;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!this.mDataValid)
      throw new IllegalStateException("this should only be called when the cursor is valid");
    if (!this.mCursor.moveToPosition(paramInt))
      throw new IllegalStateException("couldn't move cursor to position " + paramInt);
    if (paramView == null)
      paramView = newView(this.mContext, this.mCursor, paramViewGroup);
    bindView(paramView, this.mContext, this.mCursor);
    return paramView;
  }

  public boolean hasStableIds()
  {
    return true;
  }

  protected void init(Context paramContext, Cursor paramCursor, boolean paramBoolean)
  {
    boolean bool;
    if (paramCursor != null)
    {
      bool = true;
      this.mAutoRequery = paramBoolean;
      this.mCursor = paramCursor;
      this.mDataValid = bool;
      this.mContext = paramContext;
      if (!bool)
        break label93;
    }
    label93: for (int i = paramCursor.getColumnIndexOrThrow("_id"); ; i = -1)
    {
      this.mRowIDColumn = i;
      this.mChangeObserver = new CursorAdapter.ChangeObserver(this);
      if (bool)
      {
        paramCursor.registerContentObserver(this.mChangeObserver);
        paramCursor.registerDataSetObserver(this.mDataSetObserver);
      }
      return;
      bool = false;
      break;
    }
  }

  public View newDropDownView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return newView(paramContext, paramCursor, paramViewGroup);
  }

  public abstract View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup);

  protected void onContentChanged()
  {
    if ((this.mAutoRequery) && (this.mCursor != null) && (!this.mCursor.isClosed()))
      this.mDataValid = this.mCursor.requery();
  }

  public Cursor runQueryOnBackgroundThread(CharSequence paramCharSequence)
  {
    if (this.mFilterQueryProvider != null)
      return this.mFilterQueryProvider.runQuery(paramCharSequence);
    return this.mCursor;
  }

  public void setFilterQueryProvider(FilterQueryProvider paramFilterQueryProvider)
  {
    this.mFilterQueryProvider = paramFilterQueryProvider;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.CursorAdapter
 * JD-Core Version:    0.6.2
 */