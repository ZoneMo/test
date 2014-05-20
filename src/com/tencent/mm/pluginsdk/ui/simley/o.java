package com.tencent.mm.pluginsdk.ui.simley;

import android.support.v4.view.an;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.tencent.mm.pluginsdk.ui.SmileyGrid;
import com.tencent.mm.pluginsdk.ui.SmileySubGrid;
import com.tencent.mm.sdk.platformtools.aa;
import java.lang.ref.SoftReference;

public final class o extends an
{
  private final String TAG = "MicroMsg.SmileyPanelVAdapter";
  g fsS;
  private boolean ftO;
  private SparseArray ftP = new SparseArray();
  private volatile boolean ftQ = false;
  private int mCount;

  public o(g paramg)
  {
    this.fsS = paramg;
  }

  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (this.ftO)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(paramInt);
      aa.f("MicroMsg.SmileyPanelVAdapter", "get item: %d pass---- --- ", arrayOfObject3);
      return null;
    }
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    aa.f("MicroMsg.SmileyPanelVAdapter", "get item: %d", arrayOfObject1);
    if (this.ftP.get(paramInt) != null);
    for (SmileyGrid localSmileyGrid1 = (SmileyGrid)((SoftReference)this.ftP.get(paramInt)).get(); ; localSmileyGrid1 = null)
    {
      if (localSmileyGrid1 == null)
      {
        long l1 = System.currentTimeMillis();
        SmileyGrid localSmileyGrid2 = (SmileyGrid)this.fsS.kO(paramInt);
        paramViewGroup.addView(localSmileyGrid2, 0);
        this.ftP.put(paramInt, new SoftReference(localSmileyGrid2));
        long l2 = System.currentTimeMillis();
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paramInt);
        arrayOfObject2[1] = Long.valueOf(l2 - l1);
        aa.e("MicroMsg.SmileyPanelVAdapter", "instance one item : %d, expense Time: %d", arrayOfObject2);
        return localSmileyGrid2;
      }
      if (localSmileyGrid1.getParent() != null)
        ((ViewGroup)localSmileyGrid1.getParent()).removeView(localSmileyGrid1);
      paramViewGroup.addView(localSmileyGrid1, 0);
      return localSmileyGrid1;
    }
  }

  public final void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.f("MicroMsg.SmileyPanelVAdapter", "destroy item: %d", arrayOfObject);
    paramViewGroup.removeView((View)paramObject);
  }

  public final boolean a(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }

  public final void auF()
  {
    aa.d("MicroMsg.SmileyPanelVAdapter", "deep notify data change!");
    clear();
    auG();
    this.ftQ = true;
    super.notifyDataSetChanged();
    this.ftQ = false;
  }

  public final void auG()
  {
    aa.d("MicroMsg.SmileyPanelVAdapter", "refresh data");
    this.mCount = this.fsS.aul();
  }

  public final void aut()
  {
    if ((this.ftP == null) || (this.ftP.size() <= 0))
      return;
    int i = 0;
    label20: int j;
    if (i < this.ftP.size())
    {
      j = this.ftP.keyAt(i);
      if (this.ftP.get(j) != null)
        break label77;
    }
    label77: for (SmileyGrid localSmileyGrid = null; ; localSmileyGrid = (SmileyGrid)((SoftReference)this.ftP.get(j)).get())
    {
      if ((localSmileyGrid != null) && ((localSmileyGrid instanceof SmileySubGrid)))
        ((SmileySubGrid)localSmileyGrid).arG();
      i++;
      break label20;
      break;
    }
  }

  public final int b(Object paramObject)
  {
    if (this.ftQ)
    {
      aa.d("MicroMsg.SmileyPanelVAdapter", "getItemposition always changed");
      return -2;
    }
    return super.b(paramObject);
  }

  public final void cO(boolean paramBoolean)
  {
    this.ftO = paramBoolean;
  }

  public final void clear()
  {
    aa.v("MicroMsg.SmileyPanelVAdapter", "clear adapter all grid view cache .. ");
    this.ftP.clear();
  }

  public final int getCount()
  {
    return this.mCount;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.simley.o
 * JD-Core Version:    0.6.2
 */