package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.p.p;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.ak;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.f;
import com.tencent.mm.w.g;

final class di extends ce
{
  private ChattingUI gMB;

  public di()
  {
    super(3);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903190);
      paramView.setTag(new kj(this.dws).c(paramView, false));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    int i = 4;
    this.gMB = paramChattingUI;
    kj localkj = (kj)paramcf;
    localkj.cMS.setVisibility(0);
    c.a(localkj.cMS, paramChattingUI.gMi.clp);
    localkj.cMS.setTag(new kk(paramChattingUI.gMi.clp));
    localkj.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
    localkj.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
    a(paramChattingUI);
    int j;
    label177: int n;
    int i1;
    int k;
    label263: int m;
    if (be.uz().isSDCardAvailable())
    {
      ag.Ba().a(localkj.gKd, paramak.ot(), com.tencent.mm.an.a.getDensity(paramChattingUI), paramak.bXI, paramak.bXJ);
      e locale1 = ag.Ba().g(paramak);
      if (locale1 == null)
        break label513;
      if ((!f.b(locale1)) && (paramak.getStatus() != 5))
        break label453;
      j = 1;
      TextView localTextView1 = localkj.gQH;
      StringBuilder localStringBuilder = new StringBuilder();
      if (locale1 == null)
        break label472;
      n = locale1.vR();
      i1 = locale1.getOffset();
      if (locale1.AM())
      {
        e locale2 = ag.Ba().dE(locale1.AK());
        n = locale2.vR();
        i1 = locale2.getOffset();
      }
      if (n <= 0)
        break label472;
      if (i1 < n)
        break label459;
      k = 100;
      localTextView1.setText(k + "%");
      ProgressBar localProgressBar = localkj.dSt;
      if (j == 0)
        break label478;
      m = i;
      label299: localProgressBar.setVisibility(m);
      TextView localTextView2 = localkj.gQH;
      if (j == 0)
        break label484;
      label318: localTextView2.setVisibility(i);
      if (j == 0)
        break label490;
      localkj.gKd.setAlpha(255);
      localkj.gKd.setBackgroundDrawable(null);
    }
    while (true)
    {
      localkj.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, paramak.aCl(), 0, '\000'));
      localkj.gki.setOnClickListener(paramChattingUI.gMi.gNw);
      localkj.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
      a(paramInt, localkj, paramak, paramChattingUI.gMi.clp, paramChattingUI.gJU, paramChattingUI.gMi.gNw);
      return;
      localkj.gKd.setImageDrawable(com.tencent.mm.an.a.k(paramChattingUI, 2130838946));
      break;
      label453: j = 0;
      break label177;
      label459: k = i1 * 100 / n;
      break label263;
      label472: k = 0;
      break label263;
      label478: m = 0;
      break label299;
      label484: i = 0;
      break label318;
      label490: localkj.gKd.setAlpha(64);
      localkj.gKd.setBackgroundResource(2130839232);
      continue;
      label513: localkj.dSt.setVisibility(8);
      localkj.gQH.setVisibility(8);
      localkj.gKd.setAlpha(255);
      localkj.gKd.setBackgroundDrawable(null);
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    if (be.uz().isSDCardAvailable())
    {
      int i = ((kk)paramView.getTag()).position;
      boolean bool = paramak.field_msgId < 0L;
      e locale = null;
      if (bool)
        locale = ag.Ba().dG((int)paramak.field_msgId);
      if (((locale == null) || (locale.AG() <= 0L)) && (paramak.field_msgSvrId > 0))
        locale = ag.Ba().dF(paramak.field_msgSvrId);
      if ((locale.AM()) && (locale.vR() == 0))
        ag.Ba().dE(locale.AK());
      paramContextMenu.add(i, 110, 0, paramView.getContext().getString(2131165626));
      if (paramak.getStatus() == 5)
        paramContextMenu.add(i, 103, 0, paramView.getContext().getString(2131165775));
      if ((p.xK()) && (!this.gMB.aJJ()))
        paramContextMenu.add(i, 114, 0, paramView.getContext().getString(2131165798));
      if (com.tencent.mm.ak.a.qc("favorite"))
        paramContextMenu.add(i, 116, 0, paramView.getContext().getString(2131167820));
      if (!this.gMB.aJJ())
        paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165659));
    }
    return true;
  }

  public final boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak)
  {
    return false;
  }

  public final boolean a(View paramView, ChattingUI paramChattingUI, ak paramak)
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.di
 * JD-Core Version:    0.6.2
 */