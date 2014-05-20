package com.tencent.mm.ui.tools.gridviewheaders;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;

public final class r extends BaseAdapter
  implements b
{
  private ListAdapter hoA;
  private DataSetObserver mDataSetObserver = new s(this);

  public r(ListAdapter paramListAdapter)
  {
    this.hoA = paramListAdapter;
    paramListAdapter.registerDataSetObserver(this.mDataSetObserver);
  }

  public final View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return null;
  }

  public final int aOk()
  {
    return 0;
  }

  public final int getCount()
  {
    return this.hoA.getCount();
  }

  public final Object getItem(int paramInt)
  {
    return this.hoA.getItem(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return this.hoA.getItemId(paramInt);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return this.hoA.getView(paramInt, paramView, paramViewGroup);
  }

  public final int oo(int paramInt)
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.r
 * JD-Core Version:    0.6.2
 */