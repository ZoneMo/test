package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.tencent.mm.compatible.loader.PluginResourceLoader;
import com.tencent.mm.compatible.loader.g;
import com.tencent.mm.p.p;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.MMTextView;

class dr extends ce
{
  private ChattingUI gMB;
  private int gMW = 0;
  private int gMX = 0;
  private int gMY = 0;

  public dr(int paramInt)
  {
    super(paramInt);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903180);
      paramView.setTag(new lx(this.dws).c(paramView, false));
      this.gMW = com.tencent.mm.an.a.fromDPToPix(paramLayoutInflater.getContext(), 140);
      this.gMX = com.tencent.mm.an.a.fromDPToPix(paramLayoutInflater.getContext(), 30);
      this.gMY = com.tencent.mm.an.a.fromDPToPix(paramLayoutInflater.getContext(), 215);
    }
    return paramView;
  }

  public void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    lx locallx = (lx)paramcf;
    c.a(locallx.cMS, paramChattingUI.gMi.clp);
    locallx.gRC.setText(paramak.getContent());
    label86: int i;
    if (paramak.getStatus() >= 2)
    {
      locallx.dSt.setVisibility(8);
      locallx.fng.setVisibility(0);
      if (paramak.getType() != 301989937)
        break label334;
      ks.a(locallx.gRC, paramChattingUI);
      a(paramChattingUI);
      locallx.cMS.setTag(new kk(paramChattingUI.gMi.clp));
      locallx.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      locallx.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      kk localkk = kk.a(paramak, paramChattingUI.gJU, paramInt);
      locallx.gRC.setTag(localkk);
      locallx.gRC.setOnClickListener(paramChattingUI.gMi.gNw);
      locallx.gRC.setOnLongClickListener(paramChattingUI.gMi.gNy);
      locallx.gRC.a(paramChattingUI.gMi.gNA);
      a(paramInt, locallx, paramak, paramChattingUI.gMi.clp, paramChattingUI.gJU, paramChattingUI.gMi.gNw);
      if (1 != locallx.gMz)
        break label352;
      i = 1;
      label255: if ((g.cff == null) || (g.cff.cfm == null))
        break label358;
    }
    label334: label352: label358: for (this.gMY = (g.cff.cfm.getDisplayMetrics().widthPixels - this.gMW); ; this.gMY = (paramChattingUI.getResources().getDisplayMetrics().widthPixels - this.gMW))
    {
      if (i != 0)
        this.gMY -= this.gMX;
      locallx.gRC.setMaxWidth(this.gMY);
      return;
      locallx.dSt.setVisibility(0);
      break;
      paramChattingUI.gMi.gNr.e(locallx.gRC);
      break label86;
      i = 0;
      break label255;
    }
  }

  public boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    if ((paramak.aCc()) || (paramak.aBW()))
    {
      int i = ((kk)paramView.getTag()).position;
      if (paramak.aCc())
        paramContextMenu.add(i, 102, 0, paramView.getContext().getString(2131165665));
      paramContextMenu.add(i, 108, 0, paramView.getContext().getString(2131165626));
      if (paramak.getStatus() == 5)
        paramContextMenu.add(i, 103, 0, paramView.getContext().getString(2131165775));
      if (com.tencent.mm.ak.a.qc("favorite"))
        paramContextMenu.add(i, 116, 0, paramView.getContext().getString(2131167820));
      if ((paramak.aCc()) && (p.xI()) && (!this.gMB.aJJ()))
        paramContextMenu.add(i, 114, 0, paramView.getContext().getString(2131165798));
      if (!this.gMB.aJJ())
        paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165658));
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
 * Qualified Name:     com.tencent.mm.ui.chatting.dr
 * JD-Core Version:    0.6.2
 */