package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.compatible.loader.PluginResourceLoader;
import com.tencent.mm.compatible.loader.g;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.p.p;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.MMTextView;

class dq extends ce
{
  private ChattingUI gMB;
  private int gMW = 0;
  private int gMX = 0;
  private int gMY = 0;

  public dq(int paramInt)
  {
    super(paramInt);
  }

  public View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903160);
      paramView.setTag(new lx(this.dws).c(paramView, true));
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
    locallx.gMy.setVisibility(8);
    String str3;
    String str2;
    String str4;
    if (paramChattingUI.gJU)
    {
      str3 = paramak.getContent();
      int j = bv.dw(str3);
      if (j == -1)
        break label520;
      String str5 = str3.substring(0, j).trim();
      String str6 = null;
      if (str5 != null)
      {
        int k = str5.length();
        str6 = null;
        if (k > 0)
        {
          c.a(locallx.cMS, str5);
          locallx.gMy.setText(w.cu(str5));
          str6 = str5;
        }
      }
      String str7 = str3.substring(j + 1).trim();
      if (paramChattingUI.gOY)
      {
        locallx.gMy.setText(paramChattingUI.cu(str5));
        locallx.gMy.setVisibility(0);
      }
      a(paramChattingUI);
      str2 = str6;
      str4 = str7;
    }
    while (true)
    {
      locallx.gRC.setText(str4);
      locallx.fng.setVisibility(0);
      label205: int i;
      if (paramak.getType() == 301989937)
      {
        ks.a(locallx.gRC, paramChattingUI);
        locallx.cMS.setTag(new kk(str2));
        locallx.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
        locallx.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
        kk localkk = kk.a(paramak, paramChattingUI.gJU, paramInt);
        locallx.gRC.setTag(localkk);
        locallx.gRC.setOnClickListener(paramChattingUI.gMi.gNw);
        locallx.gRC.setOnLongClickListener(paramChattingUI.gMi.gNy);
        locallx.gRC.a(paramChattingUI.gMi.gNA);
        if (1 != locallx.gMz)
          break label492;
        i = 1;
        label331: if ((g.cff == null) || (g.cff.cfm == null))
          break label498;
      }
      label492: label498: for (this.gMY = (g.cff.cfm.getDisplayMetrics().widthPixels - this.gMW); ; this.gMY = (paramChattingUI.getResources().getDisplayMetrics().widthPixels - this.gMW))
      {
        if (i != 0)
          this.gMY -= this.gMX;
        locallx.gRC.setMaxWidth(this.gMY);
        return;
        String str1 = paramChattingUI.gMi.bNl;
        if (w.db(str1))
          locallx.cMS.setVisibility(8);
        while (true)
        {
          locallx.gMy.setText(w.cu(str1));
          locallx.gRC.setText(paramak.getContent());
          str2 = paramak.aCl();
          break;
          c.a(locallx.cMS, str1);
        }
        paramChattingUI.gMi.gNr.e(locallx.gRC);
        break label205;
        i = 0;
        break label331;
      }
      label520: str4 = str3;
      str2 = null;
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
 * Qualified Name:     com.tencent.mm.ui.chatting.dq
 * JD-Core Version:    0.6.2
 */