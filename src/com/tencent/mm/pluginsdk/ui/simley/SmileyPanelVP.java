package com.tencent.mm.pluginsdk.ui.simley;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.view.an;
import android.util.AttributeSet;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.CustomViewPager;

public class SmileyPanelVP extends CustomViewPager
{
  private final String TAG = "MicroMsg.SmileyPanel.VP";
  private g fsS;
  private p ftR;

  public SmileyPanelVP(Context paramContext)
  {
    super(paramContext);
    cG();
  }

  public SmileyPanelVP(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    cG();
  }

  private void cG()
  {
    if (Integer.parseInt(Build.VERSION.SDK) >= 9)
      setOverScrollMode(2);
  }

  public final void a(an paraman)
  {
    super.a(paraman);
  }

  public final void a(g paramg)
  {
    this.fsS = paramg;
  }

  public final void a(o paramo, int paramInt)
  {
    if (paramInt >= 2);
    for (boolean bool = true; ; bool = false)
    {
      paramo.cO(bool);
      paramo.auG();
      super.a(paramo);
      paramo.cO(false);
      return;
    }
  }

  public final void a(p paramp)
  {
    this.ftR = paramp;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    arrayOfObject[3] = Integer.valueOf(paramInt4);
    aa.e("MicroMsg.SmileyPanel.VP", "w: %d, h: %d, oldw: %d, oldh: %d", arrayOfObject);
    if ((this.fsS != null) && (paramInt2 > 0) && (paramInt4 != paramInt2))
    {
      this.fsS.kI(paramInt2);
      if (this.ftR != null)
        this.ftR.auD();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.simley.SmileyPanelVP
 * JD-Core Version:    0.6.2
 */