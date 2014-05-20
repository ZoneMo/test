package com.tencent.mm.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.GridView;
import com.tencent.mm.sdk.platformtools.aa;

public final class MMGridPaperGridView extends GridView
{
  private int K;
  private int cVu;
  private int cVz;
  private int gzK;
  private int gzL = -1;
  private boolean gzM = false;
  private bh gzN;
  private bd gzO;
  private AdapterView.OnItemClickListener gzP = new bf(this);
  private AdapterView.OnItemLongClickListener gzQ = new bg(this);
  private int mCount;

  public MMGridPaperGridView(Context paramContext)
  {
    super(paramContext);
  }

  public MMGridPaperGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MMGridPaperGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, bd parambd)
  {
    boolean bool = true;
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[bool] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    if (parambd == null);
    while (true)
    {
      arrayOfObject[3] = Boolean.valueOf(bool);
      aa.d("MicroMsg.MMGridPaperGridView", "index[%d], rows[%d], columns[%d], adapter is null[%B]", arrayOfObject);
      this.K = paramInt1;
      this.cVu = paramInt2;
      this.gzK = paramInt3;
      this.gzO = parambd;
      this.mCount = (this.cVu * this.gzK);
      this.cVz = (this.K * this.mCount);
      if ((this.gzO != null) && (this.gzO.getCount() - this.cVz < this.mCount))
        this.mCount = (this.gzO.getCount() - this.cVz);
      if (getAdapter() == null)
      {
        aa.w("MicroMsg.MMGridPaperGridView", "get adapter null, new one");
        this.gzN = new bh(this, (byte)0);
        setAdapter(this.gzN);
      }
      setNumColumns(this.gzK);
      setColumnWidth(3);
      setOnItemClickListener(this.gzP);
      setOnItemLongClickListener(this.gzQ);
      return;
      bool = false;
    }
  }

  public final int getIndex()
  {
    return this.K;
  }

  public final void notifyDataSetChanged()
  {
    if (this.gzN != null)
      this.gzN.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMGridPaperGridView
 * JD-Core Version:    0.6.2
 */