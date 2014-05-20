package com.tencent.mm.ui.tools.gridviewheaders;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;

public abstract interface b extends ListAdapter
{
  public abstract View a(int paramInt, View paramView, ViewGroup paramViewGroup);

  public abstract int aOk();

  public abstract int oo(int paramInt);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.b
 * JD-Core Version:    0.6.2
 */