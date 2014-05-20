package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class a extends BaseAdapter
  implements d, Filterable
{
  protected b fv;
  protected c fw;
  protected boolean mAutoRequery;
  protected Context mContext;
  protected Cursor mCursor;
  protected DataSetObserver mDataSetObserver;
  protected boolean mDataValid;
  protected FilterQueryProvider mFilterQueryProvider;
  protected int mRowIDColumn;

  public abstract void a(View paramView, Cursor paramCursor);

  public void changeCursor(Cursor paramCursor)
  {
    Cursor localCursor;
    if (paramCursor == this.mCursor)
      localCursor = null;
    while (true)
    {
      if (localCursor != null)
        localCursor.close();
      return;
      localCursor = this.mCursor;
      if (localCursor != null)
      {
        if (this.fv != null)
          localCursor.unregisterContentObserver(this.fv);
        if (this.mDataSetObserver != null)
          localCursor.unregisterDataSetObserver(this.mDataSetObserver);
      }
      this.mCursor = paramCursor;
      if (paramCursor != null)
      {
        if (this.fv != null)
          paramCursor.registerContentObserver(this.fv);
        if (this.mDataSetObserver != null)
          paramCursor.registerDataSetObserver(this.mDataSetObserver);
        this.mRowIDColumn = paramCursor.getColumnIndexOrThrow("_id");
        this.mDataValid = true;
        notifyDataSetChanged();
      }
      else
      {
        this.mRowIDColumn = -1;
        this.mDataValid = false;
        notifyDataSetInvalidated();
      }
    }
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

  public final Cursor getCursor()
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
      a(paramView, this.mCursor);
      return paramView;
    }
    return null;
  }

  public Filter getFilter()
  {
    if (this.fw == null)
      this.fw = new c(this);
    return this.fw;
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
    a(paramView, this.mCursor);
    return paramView;
  }

  public boolean hasStableIds()
  {
    return true;
  }

  public View newDropDownView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return newView(paramContext, paramCursor, paramViewGroup);
  }

  public abstract View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup);

  protected final void onContentChanged()
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
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.a
 * JD-Core Version:    0.6.2
 */