package com.tencent.mm.ui.chatting;

import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.j.a;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.plugin.voicereminder.a.k;
import com.tencent.mm.plugin.voicereminder.a.n;
import com.tencent.mm.plugin.voicereminder.a.y;
import com.tencent.mm.pluginsdk.model.app.ab;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.r;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;

final class eh extends ce
{
  private m cyn;
  private ChattingUI gMB;

  public eh()
  {
    super(33);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (!(paramView.getTag() instanceof lw)) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903197);
      paramView.setTag(new lw(this.dws).aw(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    lw locallw = (lw)paramcf;
    this.gMB = paramChattingUI;
    String str1 = paramChattingUI.gMi.bNl;
    c.a(locallw.cMS, str1);
    locallw.cMS.setVisibility(0);
    locallw.cMS.setTag(new kk(str1));
    locallw.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
    locallw.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
    a locala = ba.HD().bt(paramak.Bo());
    String str2 = cj.sT(paramak.getContent());
    if ((locala != null) && (str2 != null));
    for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str2); ; localb = null)
    {
      if (localb != null)
        locallw.dkR.setText(localb.description);
      aa.d("MicroMsg.ChattingItemVoiceRemindsys", "content sys " + paramak.getContent());
      k localk = k.pl(str2);
      if ((localk != null) && (localk.ePg != null) && (localk.ePg.length() > 0) && (localk.ePh > 0) && (this.cyn == null) && (cj.hX(paramak.ot())))
      {
        String str3 = y.gY(v.th());
        String str4 = n.B(str3, false);
        paramak.uN(str3);
        be.uz().sw().a(paramak.Bo(), paramak);
        String str5 = s.a(str4, paramak.Bo(), localb.sdkVer, localb.appId, localk.ePg, localk.ePh);
        if (str5 != null)
        {
          ac localac = be.uA();
          ei localei = new ei(this, paramak, str5, paramInt);
          this.cyn = localei;
          localac.a(221, localei);
          ab localab = new ab(str5);
          localab.apY();
          be.uA().d(localab);
        }
      }
      locallw.dkR.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
      locallw.dkR.setOnClickListener(paramChattingUI.gMi.gNw);
      if (be.uz().isSDCardAvailable())
        locallw.dkR.setOnLongClickListener(paramChattingUI.gMi.gNy);
      return;
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    if (!this.gMB.aJJ())
      paramContextMenu.add(i, 100, 0, this.gMB.getString(2131165658));
    return true;
  }

  public final boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return false;
    case 100:
    }
    String str = cj.sT(paramak.getContent());
    com.tencent.mm.j.b localb = null;
    if (str != null)
      localb = com.tencent.mm.j.b.bR(str);
    if (localb != null)
      s.qr(localb.cgE);
    bv.q(paramak.Bo());
    return false;
  }

  public final boolean a(View paramView, ChattingUI paramChattingUI, ak paramak)
  {
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.eh
 * JD-Core Version:    0.6.2
 */