package com.tencent.mm.ui.tools.gridviewheaders;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class c extends BaseAdapter
{
  private static boolean hnS;
  private int cUu = 1;
  private GridHeadersGridView hjH;
  private final b hnT;
  private final List hnU = new ArrayList();
  private View[] hnV;
  private final Context mContext;
  private int mCount;
  private DataSetObserver mDataSetObserver = new d(this);

  public c(Context paramContext, GridHeadersGridView paramGridHeadersGridView, b paramb)
  {
    this.mContext = paramContext;
    this.hnT = paramb;
    this.hjH = paramGridHeadersGridView;
    paramb.registerDataSetObserver(this.mDataSetObserver);
  }

  private void op(int paramInt)
  {
    this.hnV = new View[paramInt];
    Arrays.fill(this.hnV, null);
  }

  private int oq(int paramInt)
  {
    int i = this.hnT.oo(paramInt) % this.cUu;
    if (i == 0)
      return 0;
    return this.cUu - i;
  }

  protected final View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.hnT.aOk() == 0)
      return null;
    return this.hnT.a(os(paramInt).hnZ, paramView, paramViewGroup);
  }

  protected final void aOl()
  {
    this.mCount = 0;
    int i = this.hnT.aOk();
    int j = 0;
    if (i == 0)
      this.mCount = this.hnT.getCount();
    while (true)
    {
      return;
      while (j < i)
      {
        this.mCount += this.hnT.oo(j) + this.cUu;
        j++;
      }
    }
  }

  public final boolean areAllItemsEnabled()
  {
    return false;
  }

  public final int getCount()
  {
    this.mCount = 0;
    int i = this.hnT.aOk();
    int j = 0;
    if (i == 0)
      return this.hnT.getCount();
    while (j < i)
    {
      this.mCount += this.hnT.oo(j) + oq(j) + this.cUu;
      j++;
    }
    return this.mCount;
  }

  public final Object getItem(int paramInt)
  {
    g localg = os(paramInt);
    if ((localg.hQ == -1) || (localg.hQ == -2))
      return null;
    return this.hnT.getItem(localg.hQ);
  }

  public final long getItemId(int paramInt)
  {
    g localg = os(paramInt);
    if (localg.hQ == -2)
      return -1L;
    if (localg.hQ == -1)
      return -2L;
    return this.hnT.getItemId(localg.hQ);
  }

  public final int getItemViewType(int paramInt)
  {
    g localg = os(paramInt);
    int i;
    if (localg.hQ == -2)
      i = 1;
    do
    {
      return i;
      if (localg.hQ == -1)
        return 0;
      i = this.hnT.getItemViewType(localg.hQ);
    }
    while (i == -1);
    return i + 2;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    h localh;
    View localView1;
    if ((paramView instanceof h))
    {
      localh = (h)paramView;
      localView1 = localh.getChildAt(0);
    }
    while (true)
    {
      g localg = os(paramInt);
      Object localObject;
      if (localg.hQ == -2)
      {
        localObject = new f(this, this.mContext);
        ((f)localObject).ov(this.hjH.getWidth());
        ((f)localObject).ou(localg.hnZ);
        View localView2 = (View)((View)localObject).getTag();
        ((View)localObject).setTag(this.hnT.a(localg.hnZ, localView2, paramViewGroup));
      }
      while (true)
      {
        if (localh == null)
          localh = new h(this, this.mContext);
        localh.removeAllViews();
        localh.addView((View)localObject);
        localh.x(paramInt);
        localh.setNumColumns(this.cUu);
        this.hnV[(paramInt % this.cUu)] = localh;
        if (paramInt % this.cUu != 0)
          break label291;
        hnS = true;
        for (int i = 1; i < this.hnV.length; i++)
          this.hnV[i] = getView(paramInt + i, null, paramViewGroup);
        if (localg.hQ == -1)
        {
          e locale = (e)localView1;
          if (locale == null)
            locale = new e(this, this.mContext);
          localObject = locale;
        }
        else
        {
          localObject = this.hnT.getView(localg.hQ, localView1, paramViewGroup);
        }
      }
      hnS = false;
      label291: localh.a(this.hnV);
      if ((!hnS) && ((paramInt % this.cUu == -1 + this.cUu) || (paramInt == -1 + getCount())))
        op(this.cUu);
      return localh;
      localView1 = paramView;
      localh = null;
    }
  }

  public final int getViewTypeCount()
  {
    return 2 + this.hnT.getViewTypeCount();
  }

  public final boolean hasStableIds()
  {
    return this.hnT.hasStableIds();
  }

  public final boolean isEmpty()
  {
    return this.hnT.isEmpty();
  }

  public final boolean isEnabled(int paramInt)
  {
    g localg = os(paramInt);
    if ((localg.hQ == -1) || (localg.hQ == -2))
      return false;
    return this.hnT.isEnabled(localg.hQ);
  }

  protected final long or(int paramInt)
  {
    return os(paramInt).hnZ;
  }

  protected final g os(int paramInt)
  {
    int i = 0;
    int j = this.hnT.aOk();
    if (j == 0)
    {
      if (paramInt >= this.hnT.getCount())
        return new g(this, -1, 0);
      return new g(this, paramInt, 0);
    }
    int i3;
    for (int k = paramInt; i < j; k = i3)
    {
      int m = this.hnT.oo(i);
      if (k == 0)
        return new g(this, -2, i);
      int n = k - this.cUu;
      if (n < 0)
        return new g(this, -1, i);
      int i1 = paramInt - this.cUu;
      if (n < m)
        return new g(this, i1, i);
      int i2 = oq(i);
      paramInt = i1 - i2;
      i3 = n - (m + i2);
      i++;
    }
    return new g(this, -1, i);
  }

  protected final g ot(int paramInt)
  {
    int i = 0;
    int j = this.hnT.aOk();
    if (j == 0)
    {
      if (paramInt >= this.hnT.getCount())
        return new g(this, -1, 0);
      return new g(this, paramInt, 0);
    }
    int k = 0;
    int m = 0;
    while (i < j)
    {
      int i2 = oq(i);
      k += i2;
      int i3 = this.hnT.oo(i);
      if ((paramInt >= m) && (paramInt <= m + i3 - i2))
        break;
      m += 1 + (i3 - i2);
      i++;
    }
    int n = oq(i);
    int i1 = i + 1;
    return new g(this, paramInt + (k + (i1 * this.cUu - n)), i1);
  }

  public final void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    this.hnT.registerDataSetObserver(paramDataSetObserver);
  }

  public final void setNumColumns(int paramInt)
  {
    this.cUu = paramInt;
    op(paramInt);
  }

  public final void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    this.hnT.unregisterDataSetObserver(paramDataSetObserver);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.c
 * JD-Core Version:    0.6.2
 */