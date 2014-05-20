package com.tencent.mm.ui.base;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import junit.framework.Assert;

final class bh extends BaseAdapter
{
  private bh(MMGridPaperGridView paramMMGridPaperGridView)
  {
  }

  public final int getCount()
  {
    if ((MMGridPaperGridView.c(this.gzR) < 0) || (MMGridPaperGridView.a(this.gzR) == null))
      return 0;
    return MMGridPaperGridView.c(this.gzR);
  }

  public final Object getItem(int paramInt)
  {
    if (MMGridPaperGridView.a(this.gzR) == null)
      return null;
    return MMGridPaperGridView.a(this.gzR).getItem(paramInt + MMGridPaperGridView.b(this.gzR));
  }

  public final long getItemId(int paramInt)
  {
    if (MMGridPaperGridView.a(this.gzR) == null)
      return 0L;
    return MMGridPaperGridView.a(this.gzR).getItemId(paramInt + MMGridPaperGridView.b(this.gzR));
  }

  public final int getItemViewType(int paramInt)
  {
    if (MMGridPaperGridView.a(this.gzR) == null)
      return 0;
    MMGridPaperGridView.a(this.gzR);
    MMGridPaperGridView.b(this.gzR);
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    long l = cj.FE();
    Object[] arrayOfObject1 = new Object[5];
    arrayOfObject1[0] = Integer.valueOf(MMGridPaperGridView.d(this.gzR));
    arrayOfObject1[1] = Integer.valueOf(paramInt);
    boolean bool1;
    View localView;
    label105: boolean bool2;
    if (paramView == null)
    {
      bool1 = true;
      arrayOfObject1[2] = Boolean.valueOf(bool1);
      arrayOfObject1[3] = paramViewGroup.toString();
      arrayOfObject1[4] = Boolean.valueOf(MMGridPaperGridView.e(this.gzR));
      aa.f("MicroMsg.MMGridPaperGridView", "getView:index[%d], pos[%d], converrView is null[%B], parent is [%s], mClearMode[%B]", arrayOfObject1);
      if (MMGridPaperGridView.e(this.gzR))
        paramView = null;
      if (MMGridPaperGridView.a(this.gzR) != null)
        break label220;
      localView = null;
      if (localView == null)
        break label245;
      bool2 = true;
      label113: Assert.assertTrue(bool2);
      if ((-1 == MMGridPaperGridView.f(this.gzR)) || (paramInt + MMGridPaperGridView.b(this.gzR) != MMGridPaperGridView.f(this.gzR)))
        break label251;
      localView.setVisibility(4);
    }
    while (true)
    {
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Long.valueOf(cj.O(l));
      arrayOfObject2[1] = Integer.valueOf(MMGridPaperGridView.f(this.gzR));
      arrayOfObject2[2] = Integer.valueOf(paramInt + MMGridPaperGridView.b(this.gzR));
      aa.f("MicroMsg.MMGridPaperGridView", "get View ok: use %d ms, hidden index[%d], cur global index[%d]", arrayOfObject2);
      return localView;
      bool1 = false;
      break;
      label220: localView = MMGridPaperGridView.a(this.gzR).c(paramInt + MMGridPaperGridView.b(this.gzR), paramView);
      break label105;
      label245: bool2 = false;
      break label113;
      label251: localView.setVisibility(0);
    }
  }

  public final int getViewTypeCount()
  {
    if (MMGridPaperGridView.a(this.gzR) == null)
      return 1;
    MMGridPaperGridView.a(this.gzR);
    return 1;
  }

  public final boolean isEnabled(int paramInt)
  {
    if (MMGridPaperGridView.a(this.gzR) == null)
      return false;
    MMGridPaperGridView.a(this.gzR);
    MMGridPaperGridView.b(this.gzR);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bh
 * JD-Core Version:    0.6.2
 */