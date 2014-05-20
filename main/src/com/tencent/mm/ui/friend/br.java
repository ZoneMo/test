package com.tencent.mm.ui.friend;

import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.a.j;
import com.tencent.mm.f;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.m.c;
import com.tencent.mm.m.p;
import com.tencent.mm.modelfriend.av;
import com.tencent.mm.modelfriend.aw;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.bc;

final class br extends bc
  implements p
{
  private final MMActivity bLH;
  private String cIB;
  private int[] cqM;
  private final a hbL;
  private final be hbM;
  private bu hbN;
  boolean hbO = false;
  private final int is;

  public br(MMActivity paramMMActivity, int paramInt)
  {
    super(paramMMActivity, new av());
    this.bLH = paramMMActivity;
    this.is = paramInt;
    this.hbO = paramMMActivity.getIntent().getBooleanExtra("qqgroup_sendmessage", false);
    this.hbL = new a(paramMMActivity, new bs(this));
    this.hbM = new be(paramMMActivity, new bt(this));
  }

  public final void FZ()
  {
    if (cj.hX(this.cIB))
      setCursor(ax.Aq().dv(this.is));
    while (true)
    {
      this.cqM = new int[getCount()];
      if ((this.hbN != null) && (this.cIB != null))
        this.hbN.mL(getCursor().getCount());
      notifyDataSetChanged();
      return;
      setCursor(ax.Aq().g(this.is, this.cIB));
    }
  }

  protected final void Ga()
  {
    FZ();
  }

  public final void a(bu parambu)
  {
    this.hbN = parambu;
  }

  public final void ei(String paramString)
  {
    notifyDataSetChanged();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    av localav = (av)getItem(paramInt);
    bv localbv2;
    if (paramView == null)
    {
      bv localbv1 = new bv();
      paramView = View.inflate(this.bLH, com.tencent.mm.k.aXR, null);
      localbv1.cID = ((ImageView)paramView.findViewById(i.aqu));
      localbv1.cqT = ((TextView)paramView.findViewById(i.aEM));
      localbv1.cqU = ((TextView)paramView.findViewById(i.aEH));
      localbv1.gpU = ((TextView)paramView.findViewById(i.aEI));
      localbv1.gpV = ((TextView)paramView.findViewById(i.aEK));
      paramView.setTag(localbv1);
      localbv2 = localbv1;
      TextView localTextView = localbv2.cqT;
      localTextView.setText(com.tencent.mm.ao.b.e(this.bLH, localav.getDisplayName(), (int)localbv2.cqT.getTextSize()));
      switch (this.cqM[paramInt])
      {
      case 1:
      default:
        label196: if (this.hbO)
        {
          localbv2.gpU.setVisibility(8);
          localbv2.gpV.setVisibility(8);
          localbv2.cqU.setVisibility(8);
        }
        if (j.aw(localav.Af()) == 0)
          break;
      case 2:
      case 3:
      case 0:
      }
    }
    for (Bitmap localBitmap = c.t(localav.Af()); ; localBitmap = null)
    {
      if (localBitmap == null)
      {
        localbv2.cID.setImageDrawable(com.tencent.mm.an.a.k(this.bLH, h.afI));
        return paramView;
        localbv2 = (bv)paramView.getTag();
        break;
        localbv2.gpU.setVisibility(8);
        localbv2.gpV.setVisibility(8);
        localbv2.cqU.setVisibility(0);
        localbv2.cqU.setText(n.bnx);
        localbv2.cqU.setTextColor(this.bLH.getResources().getColor(f.ZM));
        break label196;
        localbv2.gpU.setVisibility(8);
        localbv2.gpV.setVisibility(8);
        localbv2.cqU.setVisibility(0);
        localbv2.cqU.setText(n.bnw);
        localbv2.cqU.setTextColor(this.bLH.getResources().getColor(f.ZL));
        break label196;
        if ((localav.Ag() != 0) && (!com.tencent.mm.model.be.uz().su().tK(localav.getUsername())))
        {
          localbv2.cqU.setVisibility(8);
          localbv2.gpU.setVisibility(0);
          localbv2.gpV.setVisibility(8);
          break label196;
        }
        if (localav.Ag() == 0)
        {
          localbv2.cqU.setVisibility(8);
          localbv2.gpU.setVisibility(8);
          localbv2.gpV.setVisibility(0);
          break label196;
        }
        localbv2.gpU.setVisibility(8);
        localbv2.gpV.setVisibility(8);
        localbv2.cqU.setVisibility(0);
        localbv2.cqU.setText(n.bnv);
        localbv2.cqU.setTextColor(this.bLH.getResources().getColor(f.ZL));
        break label196;
      }
      localbv2.cID.setImageBitmap(localBitmap);
      return paramView;
    }
  }

  public final void ih(String paramString)
  {
    this.cIB = cj.hR(paramString.trim());
    closeCursor();
    FZ();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.br
 * JD-Core Version:    0.6.2
 */