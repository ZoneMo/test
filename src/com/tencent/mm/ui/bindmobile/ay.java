package com.tencent.mm.ui.bindmobile;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.f;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.bd;

final class ay extends bc
{
  private String cIB;
  private int[] cqM;
  private az gJl;

  public ay(Context paramContext, bd parambd)
  {
    super(paramContext, new h());
    super.a(parambd);
    this.context = paramContext;
  }

  public final void FZ()
  {
    setCursor(ax.Al().fr(this.cIB));
    this.cqM = new int[getCount()];
    if ((this.gJl != null) && (this.cIB != null))
      this.gJl.mL(getCursor().getCount());
    notifyDataSetChanged();
  }

  protected final void Ga()
  {
    FZ();
  }

  public final void a(az paramaz)
  {
    this.gJl = paramaz;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    h localh = (h)getItem(paramInt);
    ba localba1;
    if (paramView == null)
    {
      localba1 = new ba();
      paramView = View.inflate(this.context, com.tencent.mm.k.aXs, null);
      localba1.cqT = ((TextView)paramView.findViewById(com.tencent.mm.i.aBN));
      localba1.cqU = ((TextView)paramView.findViewById(com.tencent.mm.i.aBG));
      localba1.gpU = ((TextView)paramView.findViewById(com.tencent.mm.i.aBH));
      localba1.gpV = ((TextView)paramView.findViewById(com.tencent.mm.i.aBJ));
      paramView.setTag(localba1);
    }
    for (ba localba2 = localba1; ; localba2 = (ba)paramView.getTag())
    {
      localba2.cqT.setText(localh.yM());
      switch (this.cqM[paramInt])
      {
      case 1:
      default:
        return paramView;
      case 2:
      case 3:
      case 0:
      }
    }
    localba2.gpU.setVisibility(8);
    localba2.cqU.setVisibility(0);
    localba2.cqU.setText(n.bnx);
    localba2.cqU.setTextColor(this.context.getResources().getColor(f.ZM));
    return paramView;
    localba2.gpU.setVisibility(8);
    localba2.gpV.setVisibility(8);
    localba2.cqU.setVisibility(0);
    localba2.cqU.setText(n.bnw);
    localba2.cqU.setTextColor(this.context.getResources().getColor(f.ZL));
    return paramView;
    localba2.cqU.setVisibility(8);
    if ((localh.getStatus() != 0) && (!be.uz().su().tK(localh.getUsername())))
    {
      localba2.cqU.setVisibility(8);
      localba2.gpU.setVisibility(0);
      localba2.gpV.setVisibility(8);
      return paramView;
    }
    if (localh.getStatus() == 0)
    {
      localba2.cqU.setVisibility(8);
      localba2.gpU.setVisibility(8);
      localba2.gpV.setVisibility(0);
      return paramView;
    }
    localba2.gpU.setVisibility(8);
    localba2.gpV.setVisibility(8);
    localba2.cqU.setVisibility(0);
    localba2.cqU.setText(n.bnv);
    localba2.cqU.setTextColor(this.context.getResources().getColor(f.ZL));
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
 * Qualified Name:     com.tencent.mm.ui.bindmobile.ay
 * JD-Core Version:    0.6.2
 */