package com.tencent.mm.ui.tools.gridviewheaders;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class u extends BaseAdapter
  implements b
{
  private t hoC;
  private List hoD;

  public u(t paramt)
  {
    this.hoC = paramt;
    paramt.registerDataSetObserver(new v(this, (byte)0));
    this.hoD = a(paramt);
  }

  public final View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return this.hoC.a(((w)this.hoD.get(paramInt)).aOq(), paramView, paramViewGroup);
  }

  protected final List a(t paramt)
  {
    HashMap localHashMap = new HashMap();
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < paramt.getCount(); i++)
    {
      long l = paramt.or(i);
      w localw = (w)localHashMap.get(Long.valueOf(l));
      if (localw == null)
      {
        localw = new w(this, i);
        localArrayList.add(localw);
      }
      localw.aOr();
      localHashMap.put(Long.valueOf(l), localw);
    }
    return localArrayList;
  }

  public final int aOk()
  {
    return this.hoD.size();
  }

  public final int getCount()
  {
    return this.hoC.getCount();
  }

  public final Object getItem(int paramInt)
  {
    return this.hoC.getItem(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return this.hoC.getItemId(paramInt);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return this.hoC.getView(paramInt, paramView, paramViewGroup);
  }

  public final int oo(int paramInt)
  {
    try
    {
      int i = ((w)this.hoD.get(paramInt)).getCount();
      return i;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      localIndexOutOfBoundsException.toString();
    }
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.u
 * JD-Core Version:    0.6.2
 */