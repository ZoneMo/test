package com.tencent.mm.plugin.accountsync.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.ao.b;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.m.c;
import com.tencent.mm.modelfriend.af;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.n;
import com.tencent.mm.modelfriend.o;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.bd;

public final class r extends bc
{
  private String cIB;
  private boolean[] cIC;
  private int[] cqM;

  public r(Context paramContext, bd parambd)
  {
    super(paramContext, new n());
    super.a(parambd);
  }

  public final long[] FY()
  {
    int i = 0;
    boolean[] arrayOfBoolean = this.cIC;
    int j = arrayOfBoolean.length;
    int k = 0;
    int m = 0;
    while (k < j)
    {
      if (arrayOfBoolean[k] != 0)
        m++;
      k++;
    }
    long[] arrayOfLong = new long[m];
    int n = 0;
    int i2;
    if (n < getCount())
    {
      if (this.cIC[n] == 0)
        break label107;
      n localn = (n)getItem(n);
      i2 = i + 1;
      arrayOfLong[i] = localn.zf();
    }
    label107: for (int i1 = i2; ; i1 = i)
    {
      n++;
      i = i1;
      break;
      return arrayOfLong;
    }
  }

  public final void FZ()
  {
    setCursor(ax.Am().fw(this.cIB));
    this.cqM = new int[getCount()];
    this.cIC = new boolean[getCount()];
    super.notifyDataSetChanged();
  }

  protected final void Ga()
  {
    FZ();
  }

  public final void eU(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.cIC.length))
      return;
    boolean[] arrayOfBoolean = this.cIC;
    if (this.cIC[paramInt] == 0);
    for (int i = 1; ; i = 0)
    {
      arrayOfBoolean[paramInt] = i;
      super.notifyDataSetChanged();
      return;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    n localn = (n)getItem(paramInt);
    s locals2;
    Bitmap localBitmap;
    if (paramView == null)
    {
      s locals1 = new s();
      paramView = View.inflate(this.context, k.aTM, null);
      locals1.cID = ((ImageView)paramView.findViewById(i.aqu));
      locals1.cqT = ((TextView)paramView.findViewById(i.aEM));
      locals1.cIE = ((TextView)paramView.findViewById(i.axd));
      locals1.cIF = ((CheckBox)paramView.findViewById(i.axh));
      paramView.setTag(locals1);
      locals2 = locals1;
      TextView localTextView = locals2.cqT;
      localTextView.setText(b.e(this.context, localn.zg(), (int)locals2.cqT.getTextSize()));
      localBitmap = c.dS(localn.zf());
      if (localBitmap != null)
        break label244;
      locals2.cID.setImageDrawable(a.k(this.context, h.afI));
    }
    while (true)
    {
      locals2.cIF.setChecked(this.cIC[paramInt]);
      if (!ax.Ap().fD(Long.toString(localn.zf())))
        break label257;
      locals2.cIE.setVisibility(0);
      return paramView;
      locals2 = (s)paramView.getTag();
      break;
      label244: locals2.cID.setImageBitmap(localBitmap);
    }
    label257: locals2.cIE.setVisibility(8);
    return paramView;
  }

  public final void ih(String paramString)
  {
    this.cIB = cj.hR(paramString.trim());
    closeCursor();
    FZ();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.r
 * JD-Core Version:    0.6.2
 */