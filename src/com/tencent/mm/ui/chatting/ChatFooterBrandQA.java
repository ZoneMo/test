package com.tencent.mm.ui.chatting;

import android.app.AlertDialog;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.q.a;
import com.tencent.mm.q.b;
import com.tencent.mm.q.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;

public class ChatFooterBrandQA extends LinearLayout
  implements View.OnClickListener, m
{
  private View fng = null;
  private Button gKW = null;
  private Button gKX = null;
  private km gKY = null;
  private AlertDialog gKZ = null;
  private String gLa;
  private boolean gLb = false;
  private boolean gLc = false;

  public ChatFooterBrandQA(Context paramContext)
  {
    this(paramContext, null);
  }

  public ChatFooterBrandQA(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ChatFooterBrandQA(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    this.gKW.setOnClickListener(this);
    this.gKX.setOnClickListener(this);
    aIT();
  }

  private void aIT()
  {
    if (a.ym() > 0)
      this.gKX.setEnabled(true);
    while (a.yk() > 0)
    {
      this.gKW.setEnabled(true);
      return;
      this.gKX.setEnabled(false);
    }
    this.gKW.setEnabled(false);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.ChatFooterBrandQA", "type:" + paramx.getType() + " errType:" + paramInt1 + " errCode:" + paramInt2 + " errMsg:" + paramString);
    if (paramx.getType() == 244)
    {
      be.uA().b(244, this);
      aIT();
    }
    do
    {
      do
      {
        do
        {
          b localb;
          do
          {
            do
            {
              return;
              if (paramx.getType() != 243)
                break;
              be.uA().b(243, this);
              if ((this.gKZ != null) && (this.gKZ.isShowing()))
                this.gKZ.dismiss();
              this.gKZ = null;
              switch (paramInt2)
              {
              default:
                return;
              case -152:
                h.p(getContext(), getContext().getString(2131167129), null);
                return;
              case -150:
                h.p(getContext(), getContext().getString(2131167128), null);
                aIT();
                return;
              case -151:
                h.p(getContext(), getContext().getString(2131167127), null);
                aIT();
                return;
              case 0:
              }
            }
            while (paramInt1 != 0);
            localb = b.eS(a.yq());
          }
          while (localb == null);
          h.a(getContext(), a.b(localb), "", getContext().getString(2131167126), getContext().getString(2131167125), new ah(this), new ai(this, localb));
          return;
        }
        while (paramx.getType() != 522);
        be.uA().b(522, this);
        if ((paramInt1 == 0) && (paramInt2 == 0))
        {
          if (this.gLb)
          {
            a.yo();
            this.gLb = false;
          }
          if (this.gLc)
            this.gLc = false;
        }
      }
      while (this.gKY == null);
      this.gKY.aKe();
    }
    while (!this.gKY.isShowing());
    this.gKY.dismiss();
  }

  public void onClick(View paramView)
  {
    if (paramView == this.gKW)
      if (a.yk() <= 0)
      {
        h.p(getContext(), getContext().getString(2131167127), null);
        aIT();
      }
    while (paramView != this.gKX)
    {
      return;
      if (this.gKY == null)
        this.gKY = new km(getContext());
      this.gKY.setTitle(getContext().getString(2131167124));
      this.gKY.a(new ad(this));
      this.gKY.show();
      return;
    }
    if (a.ym() <= 0)
    {
      h.p(getContext(), getContext().getString(2131167128), null);
      aIT();
      return;
    }
    c localc = new c(this.gLa);
    be.uA().a(243, this);
    be.uA().d(localc);
    Context localContext = getContext();
    getContext().getString(2131167675);
    this.gKZ = h.a(localContext, null, true, new ae(this, localc));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ChatFooterBrandQA
 * JD-Core Version:    0.6.2
 */