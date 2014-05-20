package com.tencent.mm.ui.account;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.f;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.m.c;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.o;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.bd;

final class ac extends bc
{
  private String cIB;
  private int[] cqM;
  private ad gpT;

  public ac(Context paramContext, bd parambd)
  {
    super(paramContext, new com.tencent.mm.modelfriend.n());
    super.a(parambd);
  }

  public final void FZ()
  {
    setCursor(ax.Am().fv(this.cIB));
    this.cqM = new int[getCount()];
    if ((this.gpT != null) && (this.cIB != null))
      this.gpT.mL(getCursor().getCount());
    super.notifyDataSetChanged();
  }

  protected final void Ga()
  {
    FZ();
  }

  public final void a(ad paramad)
  {
    this.gpT = paramad;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    com.tencent.mm.modelfriend.n localn = (com.tencent.mm.modelfriend.n)getItem(paramInt);
    ae localae2;
    if (paramView == null)
    {
      ae localae1 = new ae();
      paramView = View.inflate(this.context, com.tencent.mm.k.aTL, null);
      localae1.cID = ((ImageView)paramView.findViewById(i.aqu));
      localae1.cqT = ((TextView)paramView.findViewById(i.aEM));
      localae1.cqU = ((TextView)paramView.findViewById(i.aEH));
      localae1.gpU = ((TextView)paramView.findViewById(i.aEI));
      localae1.gpV = ((TextView)paramView.findViewById(i.aEK));
      localae1.dLk = ((ImageView)paramView.findViewById(i.aEN));
      paramView.setTag(localae1);
      localae2 = localae1;
      TextView localTextView = localae2.cqT;
      localTextView.setText(com.tencent.mm.ao.b.e(this.context, localn.zg(), (int)localae2.cqT.getTextSize()));
      localae2.gpV.setVisibility(8);
      localae2.dLk.setVisibility(0);
      switch (this.cqM[paramInt])
      {
      case 1:
      default:
      case 2:
      case 0:
      }
    }
    Bitmap localBitmap;
    while (true)
    {
      localBitmap = c.dS(localn.zf());
      if (localBitmap != null)
        break label484;
      localae2.cID.setImageDrawable(a.k(this.context, h.afI));
      return paramView;
      localae2 = (ae)paramView.getTag();
      break;
      localae2.gpU.setVisibility(8);
      localae2.cqU.setVisibility(0);
      localae2.cqU.setText(com.tencent.mm.n.bnx);
      localae2.cqU.setTextColor(this.context.getResources().getColor(f.ZM));
      continue;
      if ((localn.getStatus() != 102) && (!be.uz().su().tK(localn.getUsername())))
      {
        localae2.cqU.setVisibility(8);
        localae2.gpU.setVisibility(0);
      }
      else if (localn.getStatus() == 102)
      {
        localae2.cqU.setVisibility(8);
        localae2.gpU.setVisibility(8);
        localae2.dLk.setVisibility(8);
      }
      else
      {
        localae2.cqU.setVisibility(0);
        localae2.cqU.setText(com.tencent.mm.n.bnv);
        localae2.cqU.setTextColor(this.context.getResources().getColor(f.ZL));
        localae2.gpU.setVisibility(8);
      }
    }
    label484: localae2.cID.setImageBitmap(localBitmap);
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
 * Qualified Name:     com.tencent.mm.ui.account.ac
 * JD-Core Version:    0.6.2
 */