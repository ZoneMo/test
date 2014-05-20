package com.tencent.mm.ui.player;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.ImageView;
import com.tencent.mm.model.al;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.module.media.MusicPlayerUI;
import com.tencent.mm.pluginsdk.module.media.q;
import com.tencent.mm.pluginsdk.s;
import com.tencent.mm.pluginsdk.v;
import com.tencent.mm.pluginsdk.w;
import com.tencent.mm.protocal.a.nk;
import com.tencent.mm.protocal.a.or;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

public class MainMusicPlayerUI extends MusicPlayerUI
  implements com.tencent.mm.n.m
{
  private final String TAG = "MicroMsg.MainMusicPlayerUI";
  private com.tencent.mm.aa.a hcU;

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    int i;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      aqO().fQd = an.b(this.hcU.BB());
      if (cj.hX(aqO().fQd))
        i = 0;
    }
    while (true)
    {
      if (i != 0)
      {
        com.tencent.mm.plugin.d.c.m.dZN.j(10911, "0");
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = aqO().fQd;
        aa.e("MicroMsg.MainMusicPlayerUI", "ok get lyric: %s", arrayOfObject2);
      }
      while (true)
      {
        int j = 0;
        if (i != 0)
          j = 8;
        ke(j);
        return;
        be.nS().aP(aqO().fQd);
        c(be.nS().oA());
        Kb();
        i = 1;
        break;
        com.tencent.mm.plugin.d.c.m.dZN.j(10911, "2");
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(paramInt1);
        arrayOfObject1[1] = Integer.valueOf(paramInt2);
        aa.e("MicroMsg.MainMusicPlayerUI", "error get errType: %d, errCode: %d", arrayOfObject1);
      }
      i = 0;
    }
  }

  protected final void a(ImageView paramImageView, or paramor)
  {
    if ((aqO() == null) || (aqO().fPT == 4))
      h.api().a(paramImageView, h.api().abQ(), paramor.fPZ, paramor.fPX);
    nk localnk;
    do
    {
      Bitmap localBitmap2;
      do
      {
        do
        {
          Bitmap localBitmap3;
          do
          {
            do
            {
              Bitmap localBitmap4;
              do
              {
                do
                {
                  return;
                  if ((be.nS().op() == null) || (be.nS().oo() != 0))
                    break;
                }
                while (!be.uz().isSDCardAvailable());
                localBitmap4 = ag.Ba().c(be.nS().ot(), com.tencent.mm.an.a.getDensity(this));
              }
              while (localBitmap4 == null);
              paramImageView.setImageBitmap(localBitmap4);
              return;
              if ((be.nS().op() == null) || (be.nS().oo() != 5))
                break;
            }
            while (!be.uz().isSDCardAvailable());
            localBitmap3 = ag.Ba().a(be.nS().ot(), true, com.tencent.mm.an.a.getDensity(this), false, false);
          }
          while (localBitmap3 == null);
          paramImageView.setImageBitmap(localBitmap3);
          return;
          if ((be.nS().op() == null) || (be.nS().oo() != 6))
            break;
        }
        while (!be.uz().isSDCardAvailable());
        localBitmap2 = ag.Ba().a(be.nS().ot(), true, com.tencent.mm.an.a.getDensity(this), false, false);
      }
      while (localBitmap2 == null);
      paramImageView.setImageBitmap(localBitmap2);
      return;
      localnk = new nk();
      localnk.fzM = aqO().fAS;
      localnk.fOn = aqO().fPZ;
      localnk.fOo = aqO().fQg;
      localnk.fyI = localnk.fOn;
    }
    while (aq.apy() == null);
    Bitmap localBitmap1 = aq.apy().a(localnk, paramImageView, hashCode());
    if (localBitmap1 == null)
    {
      aq.apy().P(paramImageView);
      aq.apy().c(localnk, paramImageView, hashCode());
      return;
    }
    paramImageView.setImageBitmap(localBitmap1);
  }

  protected final String acl()
  {
    return aqO().fQf;
  }

  protected final q acp()
  {
    return q.fjV;
  }

  protected final boolean acq()
  {
    if (aqO() == null);
    or localor;
    do
    {
      do
        return false;
      while (be.nS().oo() != aqO().fPT);
      localor = be.nS().oA();
    }
    while (localor == null);
    if ((be.nS().op() != null) && (localor.fPU != null) && (be.nS().op().equals(localor.fPU)))
      return true;
    return be.nS().d(aqO().fQc, aqO().fQb, aqO().fQa);
  }

  protected final boolean acr()
  {
    return false;
  }

  protected final String acs()
  {
    switch (aqO().fPT)
    {
    case 2:
    case 3:
    default:
      return getString(2131167412);
    case 0:
    case 1:
      return getString(2131168799);
    case 5:
      return getString(2131168360);
    case 4:
    }
    return getString(2131168552);
  }

  protected final e act()
  {
    return com.tencent.mm.plugin.chatroom.a.cHS;
  }

  protected final boolean acu()
  {
    return !acq();
  }

  protected final String acv()
  {
    String str = "";
    switch (aqO().fPT)
    {
    case 1:
    case 2:
    case 3:
    default:
      if (aq.apz() != null)
      {
        nk localnk = new nk();
        localnk.fzM = aqO().fAS;
        localnk.fOn = aqO().fPZ;
        localnk.fOo = aqO().fQg;
        localnk.fyI = localnk.fOn;
        str = aq.apz().f(localnk);
      }
      return str;
    case 4:
      return h.api().mN(aqO().fPZ);
    case 0:
      return ag.Ba().fX(aqO().fQe);
    case 5:
      if (aqO().fQe == null)
        return "";
      return aqO().fQe;
    case 6:
    }
    if (aqO().fQe == null)
      return "";
    return aqO().fQe;
  }

  protected final boolean aqL()
  {
    return false;
  }

  protected final boolean aqM()
  {
    return false;
  }

  protected final void aqN()
  {
    new Thread(new a(this)).start();
  }

  protected final void at(byte[] paramArrayOfByte)
  {
    if (be.nS().oA() != null)
      c(be.nS().oA());
  }

  protected final String getAppId()
  {
    String str = be.nS().oE();
    if (cj.hX(str));
    switch (aqO().fPT)
    {
    default:
      return str;
    case 5:
      return "wx482a4001c37e2b74";
    case 4:
    }
    return "wx485a97c844086dc9";
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onDestroy()
  {
    if (this.hcU != null)
      be.uA().c(this.hcU);
    be.uA().b(520, this);
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.player.MainMusicPlayerUI
 * JD-Core Version:    0.6.2
 */