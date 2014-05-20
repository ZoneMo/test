package com.tencent.mm.ui.chatting;

import android.app.Activity;
import android.content.Context;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.p.p;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.AnimImageView;
import com.tencent.mm.ui.base.h;

final class ej extends ce
{
  private ChattingUI gMB;

  public ej()
  {
    super(7);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903192);
      ma localma = new ma(this.dws);
      paramView.setTag(localma.d(paramView, false));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    ma localma = (ma)paramcf;
    localma.cMS.setVisibility(0);
    c.a(localma.cMS, paramChattingUI.gMi.clp);
    a(paramChattingUI);
    localma.cMS.setTag(new kk(paramChattingUI.gMi.clp));
    localma.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
    localma.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
    localma.gRL.dn(false);
    AnimImageView.aGB();
    ma.a(localma, paramak, paramInt, paramChattingUI);
    a(paramInt, localma, paramak, paramChattingUI.gMi.clp, paramChattingUI.gJU, paramChattingUI.gMi.gNw);
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i;
    bf localbf;
    int j;
    if (be.uz().isSDCardAvailable())
    {
      i = ((kk)paramView.getTag()).position;
      localbf = new bf(paramak.getContent());
      if (((localbf.getTime() == 0L) && (paramak.rO() == 0)) || ((paramak.getStatus() == 1) && (paramak.rO() == 1)))
        break label396;
      if (!((ChattingUI)paramView.getContext()).aJP())
        break label367;
      paramContextMenu.add(i, 120, 0, 2131165803);
      if ((p.eJ(paramak.aCl())) || (w.cQ(paramak.aCl())))
        break label384;
      j = 1;
      label117: if (j != 0)
        paramContextMenu.add(i, 115, 0, paramView.getContext().getString(2131165663));
    }
    while (true)
    {
      if (paramak.getStatus() == 5)
        paramContextMenu.add(i, 103, 0, paramView.getContext().getString(2131165775));
      if (a.qc("favorite"))
        paramContextMenu.add(i, 116, 0, paramView.getContext().getString(2131167820));
      if ((j != 0) && (p.xJ()) && (!this.gMB.aJJ()))
        paramContextMenu.add(i, 114, 0, paramView.getContext().getString(2131165798));
      if ((w.cw(paramak.aCl())) && (!cj.Bj()))
        paramContextMenu.add(i, 121, 0, 2131165664);
      for (int k = 1; ; k = 0)
      {
        if (((localbf.getTime() != 0L) || (paramak.rO() != 0)) && ((paramak.getStatus() != 1) || (paramak.rO() != 1)) && (!this.gMB.aJJ()))
          paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165660));
        if ((!cj.Bj()) && (k == 0))
          paramContextMenu.add(i, 121, 0, 2131165664);
        return true;
        label367: paramContextMenu.add(i, 119, 0, 2131165802);
        break;
        label384: j = 0;
        break label117;
      }
      label396: j = 0;
    }
  }

  public final boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return false;
    case 119:
      paramChattingUI.dN(true);
      return true;
    case 120:
      paramChattingUI.dN(false);
      return true;
    case 121:
    }
    if (ChattingUI.aKb())
    {
      h.a(paramChattingUI.aal(), paramChattingUI.aal().getString(2131167428), "", new ek(this, paramChattingUI, paramak));
      return true;
    }
    paramChattingUI.Q(paramak);
    return true;
  }

  public final boolean a(View paramView, ChattingUI paramChattingUI, ak paramak)
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ej
 * JD-Core Version:    0.6.2
 */