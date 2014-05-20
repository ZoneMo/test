package com.tencent.mm.pluginsdk.ui.simley;

import android.content.Context;
import android.view.View;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.pluginsdk.ui.SmileyGrid;
import com.tencent.mm.pluginsdk.ui.SmileySubGrid;
import com.tencent.mm.sdk.platformtools.aa;

public final class r
{
  private int K;
  private q ftS;
  private SmileyGrid ftT;
  private Context mContext;

  public final void a(q paramq)
  {
    this.ftS = paramq;
  }

  public final SmileyGrid auH()
  {
    return this.ftT;
  }

  public final boolean auI()
  {
    if ((this.mContext == null) || (this.ftS == null))
      return false;
    try
    {
      int i = k.aZI;
      if (this.ftS.atu())
        i = k.aZG;
      View localView = View.inflate(this.mContext, i, null);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.ftS.Lg();
      arrayOfObject[1] = Integer.valueOf(this.K);
      aa.e("MicroMsg.SmileyPanelView", "initView productId: %s, index: %d", arrayOfObject);
      this.ftT = ((SmileyGrid)localView.findViewById(i.aKP));
      this.ftT.n(this.ftS.atr().atR(), this.ftS.atr().atS());
      this.ftT.a(this.ftS.getType(), this.K, this.ftS.ats(), this.ftS.atv(), this.ftS.atw(), this.ftS.atx(), this.ftS.Lg());
      this.ftT.a(this.ftS.aty());
      this.ftT.a(this.ftS.atA());
      if ((!this.ftS.atu()) && ((this.ftT instanceof SmileySubGrid)))
        ((SmileySubGrid)this.ftT).V(this.ftS.atz());
      this.ftT.kg(this.ftS.atB());
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final void setContext(Context paramContext)
  {
    this.mContext = paramContext;
  }

  public final void setIndex(int paramInt)
  {
    this.K = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.simley.r
 * JD-Core Version:    0.6.2
 */