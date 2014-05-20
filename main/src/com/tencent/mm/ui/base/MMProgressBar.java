package com.tencent.mm.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.ay;

public class MMProgressBar extends LinearLayout
{
  private int gAJ = 0;
  private int gAK = 0;
  private TextView gAL;
  private TextView gAM;
  private cg gAN;
  private ay gAO = new ay(new cf(this), false);
  private int max = 100;

  public MMProgressBar(Context paramContext)
  {
    this(paramContext, null);
  }

  public MMProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    inflate(getContext(), k.aXg, this);
    this.gAL = ((TextView)findViewById(i.aBx));
    this.gAM = ((TextView)findViewById(i.aBy));
  }

  public final void a(cg paramcg)
  {
    this.gAN = paramcg;
  }

  public final void dr(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.gAO.bO(40L);
      return;
    }
    this.gAO.azn();
  }

  public final void setProgress(int paramInt)
  {
    if (paramInt > this.max)
      paramInt = this.max;
    this.gAK = paramInt;
    if (this.gAO.azG())
      dr(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMProgressBar
 * JD-Core Version:    0.6.2
 */