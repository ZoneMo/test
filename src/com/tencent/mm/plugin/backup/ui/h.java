package com.tencent.mm.plugin.backup.ui;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.network.bm;
import com.tencent.mm.protocal.a.ad;
import com.tencent.mm.ui.base.aa;
import com.tencent.mm.ui.base.x;

final class h
  implements View.OnClickListener
{
  h(BakChatRecoverCheckUI paramBakChatRecoverCheckUI, ad paramad)
  {
  }

  public final void onClick(View paramView)
  {
    if (!bm.ac(this.cMg))
    {
      BakChatRecoverCheckUI.a(this.cMg);
      BakChatRecoverCheckUI localBakChatRecoverCheckUI2 = this.cMg;
      String str = this.cMg.getString(2131166046);
      Drawable localDrawable = this.cMg.getResources().getDrawable(2130837937);
      i locali = new i(this);
      j localj = new j(this);
      x localx;
      if (((localBakChatRecoverCheckUI2 instanceof Activity)) && (((Activity)localBakChatRecoverCheckUI2).isFinishing()))
        localx = null;
      while (true)
      {
        localx.setCanceledOnTouchOutside(false);
        localx.setCancelable(false);
        localx.mQ(16);
        localx.aGG();
        return;
        aa localaa = new aa(localBakChatRecoverCheckUI2);
        localaa.wf(null);
        localaa.wg(null);
        localaa.wh(str);
        localaa.f(localDrawable);
        localaa.b(n.bee, locali);
        localaa.c(n.bds, localj);
        localx = localaa.aGI();
        localx.show();
        com.tencent.mm.ui.base.h.a(localBakChatRecoverCheckUI2, localx);
      }
    }
    BakChatRecoverCheckUI localBakChatRecoverCheckUI1 = this.cMg;
    int i = this.cMi.fAj;
    int j = this.cMi.fAo;
    long l = 1000L * this.cMi.fzy;
    int k = this.cMi.fAp;
    int m = this.cMi.fAq;
    boolean bool = false;
    if (m != 0)
      bool = true;
    BakChatRecoverCheckUI.a(localBakChatRecoverCheckUI1, i, j, l, k, bool, this.cMi.fAs);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.h
 * JD-Core Version:    0.6.2
 */