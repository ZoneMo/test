package com.tencent.mm.ui.chatting;

import android.app.Activity;
import android.content.Context;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.modelvoice.bi;
import com.tencent.mm.p.p;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.AnimImageView;
import com.tencent.mm.ui.base.h;

final class du extends ce
{
  private ChattingUI gMB;

  public du()
  {
    super(6);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903174);
      ma localma = new ma(this.dws);
      paramView.setTag(localma.d(paramView, true));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    ma localma = (ma)paramcf;
    localma.gMy.setVisibility(8);
    localma.cMS.setVisibility(0);
    Object localObject;
    ImageView localImageView;
    if (paramChattingUI.gJU)
    {
      int j = bv.dw(paramak.getContent());
      localObject = null;
      if (j != -1)
      {
        String str3 = paramak.getContent().substring(0, j).trim();
        localObject = null;
        if (str3 != null)
        {
          int k = str3.length();
          localObject = null;
          if (k > 0)
          {
            c.a(localma.cMS, str3);
            localma.gMy.setText(w.cu(str3));
            a(paramChattingUI);
            localObject = str3;
          }
        }
        if (paramChattingUI.gOY)
        {
          localma.gMy.setText(paramChattingUI.cu(str3));
          localma.gMy.setVisibility(0);
        }
      }
      localma.gRL.dn(true);
      AnimImageView.aGB();
      ma.a(localma, paramak, paramInt, paramChattingUI);
      localma.cMS.setTag(new kk((String)localObject));
      localma.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      localma.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      localImageView = localma.gKj;
      if ((paramChattingUI.gMi.gMj.aIO() != paramak.Bo()) && (!bi.j(paramak)))
        break label374;
    }
    String str2;
    label374: for (int i = 8; ; i = 0)
    {
      localImageView.setVisibility(i);
      str2 = paramak.aCm();
      if ((str2 != null) && (str2.length() != 0))
        break label380;
      localma.gKg.setVisibility(8);
      return;
      String str1 = paramChattingUI.gMi.bNl;
      if (w.db(str1))
        localma.cMS.setVisibility(8);
      while (true)
      {
        localma.gMy.setText(w.cu(str1));
        localObject = paramak.aCl();
        break;
        c.a(localma.cMS, str1);
      }
    }
    label380: localma.gKg.setVisibility(0);
    b(paramChattingUI, localma.gKg, kk.wG(str2));
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i;
    int j;
    if (be.uz().isSDCardAvailable())
    {
      i = ((kk)paramView.getTag()).position;
      if (((new bf(paramak.getContent()).getTime() != 0L) || (paramak.rO() != 0)) && ((paramak.getStatus() != 1) || (paramak.rO() != 1)))
      {
        if (!((ChattingUI)paramView.getContext()).aJP())
          break label331;
        paramContextMenu.add(i, 120, 0, 2131165803);
        i locali = be.uz().su().tO(paramak.aCl());
        if ((w.cH(paramak.aCl())) || (w.db(paramak.aCl())) || (locali == null) || (locali.aAp()))
          break label349;
        j = 1;
        label141: paramContextMenu.add(i, 115, 0, paramView.getContext().getString(2131165663));
        if (a.qc("favorite"))
          paramContextMenu.add(i, 116, 0, paramView.getContext().getString(2131167820));
        if ((j != 0) && (p.xJ()) && (!this.gMB.aJJ()))
          paramContextMenu.add(i, 114, 0, paramView.getContext().getString(2131165798));
        if ((!w.cw(paramak.aCl())) || (cj.Bj()))
          break label355;
        paramContextMenu.add(i, 121, 0, 2131165664);
      }
    }
    label331: label349: label355: for (int k = 1; ; k = 0)
    {
      if (!this.gMB.aJJ())
        paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165660));
      if ((!cj.Bj()) && (k == 0))
        paramContextMenu.add(i, 121, 0, 2131165664);
      return true;
      paramContextMenu.add(i, 119, 0, 2131165802);
      break;
      j = 0;
      break label141;
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
      h.a(paramChattingUI.aal(), paramChattingUI.aal().getString(2131167428), "", new dv(this, paramChattingUI, paramak));
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
 * Qualified Name:     com.tencent.mm.ui.chatting.du
 * JD-Core Version:    0.6.2
 */