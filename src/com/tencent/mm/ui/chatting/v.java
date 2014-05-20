package com.tencent.mm.ui.chatting;

import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.modelvoice.bi;
import com.tencent.mm.modelvoice.c;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.o;
import com.tencent.mm.n.p;
import com.tencent.mm.n.q;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.voicereminder.a.n;
import com.tencent.mm.sdk.platformtools.SensorController;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.am;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.bz;
import com.tencent.mm.sdk.platformtools.ca;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.dn;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public final class v
  implements c, p, q, bz
{
  private static SensorController cRh;
  private int cCb;
  private ca cRn;
  private long cRo = -1L;
  private boolean cRt = false;
  private boolean cbJ = false;
  private final o dkz;
  private boolean eTq;
  private final List gKE = new LinkedList();
  private long gKF = -1L;
  private ce gKG;
  private ChattingUI gKH;
  private ce gKI;
  private boolean gKJ;
  private boolean gKK = true;
  private Handler gKL = new w(this, Looper.getMainLooper());

  public v(ChattingUI paramChattingUI, String paramString)
  {
    this.gKH = paramChattingUI;
    if (cRh == null)
      cRh = new SensorController(paramChattingUI.getApplicationContext());
    if (this.cRn == null)
      this.cRn = new ca(paramChattingUI.getApplicationContext());
    if (com.tencent.mm.model.w.cQ(paramString))
    {
      this.cCb = 1;
      this.dkz = new com.tencent.mm.modelvoice.y(paramChattingUI, 1);
      return;
    }
    this.cCb = 0;
    this.dkz = new com.tencent.mm.modelvoice.y(paramChattingUI, 0);
  }

  private void aIN()
  {
    int i = this.gKE.size();
    int j = 0;
    int k = -1;
    if (j < i)
      if (((ak)this.gKE.get(j)).Bo() != this.gKF)
        break label101;
    label101: for (int m = j; ; m = k)
    {
      j++;
      k = m;
      break;
      if (k != -1)
        this.gKE.remove(k);
      aa.d("MicroMsg.AutoPlay", "remove voice msg : size = " + this.gKE.size());
      return;
    }
  }

  private void aIR()
  {
    aa.d("MicroMsg.AutoPlay", "stop play");
    am.sF("keep_app_silent");
    this.gKH.VX();
    aIN();
    if (this.gKE.isEmpty())
    {
      cRh.azI();
      this.cRn.azK();
    }
    this.gKH.aJQ().notifyDataSetChanged();
    this.gKF = -1L;
    aIS();
  }

  private void aIS()
  {
    if (this.gKI != null)
      this.gKI.dismiss();
  }

  private void nw(int paramInt)
  {
    while (true)
    {
      if (this.gKH == null)
        aa.e("MicroMsg.AutoPlay", "context is null");
      ak localak;
      do
      {
        es locales;
        do
        {
          return;
          locales = this.gKH.aJQ();
          if (locales == null)
          {
            aa.e("MicroMsg.AutoPlay", "add next failed: null adapter");
            return;
          }
          aa.d("MicroMsg.AutoPlay", "position : " + paramInt + "adapter getCount = " + locales.getCount());
        }
        while ((paramInt < 0) || (paramInt >= locales.getCount()));
        localak = (ak)locales.getItem(paramInt);
      }
      while (localak == null);
      if ((localak.aBV()) && (localak.rO() == 0) && (!bi.j(localak)) && (!bi.k(localak)))
        y(localak);
      paramInt++;
    }
  }

  private void y(ak paramak)
  {
    if (paramak == null);
    do
    {
      return;
      if (be.uz().isSDCardAvailable())
        break;
    }
    while (this.gKE.size() <= 0);
    this.gKE.clear();
    dn.bW(this.gKH);
    return;
    int i = this.gKE.size();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label90;
      if (((ak)this.gKE.get(j)).Bo() == paramak.Bo())
        break;
    }
    label90: if ((this.gKJ) || (this.gKE.size() == 0))
      this.gKE.add(paramak);
    aa.d("MicroMsg.AutoPlay", "add voice msg :" + this.gKE.size());
  }

  public final void aII()
  {
    aa.d("MicroMsg.AutoPlay", "clear play list");
    if (this.gKG != null)
      this.gKG.dismiss();
    this.gKE.clear();
  }

  public final void aIJ()
  {
    this.gKK = false;
  }

  public final void aIK()
  {
    this.cbJ = true;
    dI(true);
    aII();
  }

  public final void aIL()
  {
    this.cbJ = false;
    aIP();
  }

  public final void aIM()
  {
    if (!this.dkz.isPlaying())
      return;
    aIP();
  }

  public final long aIO()
  {
    return this.gKF;
  }

  public final void aIP()
  {
    while (true)
    {
      try
      {
        aa.d("MicroMsg.AutoPlay", "play next: size = " + this.gKE.size());
        if (this.gKE.size() <= 0)
        {
          this.gKL.sendEmptyMessageDelayed(0, 1000L);
          return;
        }
        long l1 = ((ak)this.gKE.get(0)).DL();
        int i = this.gKE.size();
        int j = 1;
        int k = 0;
        ak localak;
        String str1;
        String str2;
        if (j < i)
        {
          if (l1 > ((ak)this.gKE.get(j)).DL())
          {
            l2 = ((ak)this.gKE.get(j)).DL();
            m = j;
            continue;
          }
        }
        else
        {
          localak = (ak)this.gKE.get(k);
          if (localak == null)
            continue;
          if (localak == null)
            break label576;
          if ((localak.aBV()) || (localak.aCh()) || (localak.aCi()))
            continue;
          if (!localak.aCj())
            break label576;
          continue;
          Assert.assertTrue(bool);
          if (!cRh.azJ())
          {
            cRh.a(this);
            x localx = new x(this);
            if (this.cRn.r(localx))
              this.cRo = 0L;
          }
          else
          {
            if ((be.uz().isSDCardAvailable()) || (au.hX(localak.ot())))
              continue;
            this.gKE.clear();
            dn.bW(this.gKH);
            return;
          }
          this.cRo = -1L;
          continue;
          if ((be.uz().isSDCardAvailable()) && (this.gKH.aJP()))
          {
            if (this.gKG != null)
              this.gKG.dismiss();
            this.gKG = dn.a(this.gKH, 2130838573, this.gKH.getString(2131165804));
          }
          am.sE("keep_app_silent");
          bi.l(localak);
          this.dkz.stop();
          this.gKH.aJc();
          aa.v("MicroMsg.AutoPlay", "startPlay isSpeakOn:" + this.eTq);
          be.uB().K(this.eTq);
          str1 = localak.ot();
          if (this.cCb == 1)
          {
            str2 = n.B(str1, false);
            if (this.dkz.a(str2, this.eTq, true, -1))
            {
              this.dkz.a(this);
              this.dkz.a(this);
              this.gKF = localak.Bo();
              this.gKH.aJQ().notifyDataSetChanged();
            }
          }
          else
          {
            str2 = bi.fU(str1);
            continue;
          }
          this.gKF = -1L;
          Toast.makeText(this.gKH, this.gKH.getString(2131165735), 0).show();
          continue;
        }
        long l2 = l1;
        int m = k;
        continue;
        return;
        j++;
        k = m;
        l1 = l2;
        continue;
        bool = true;
        continue;
      }
      catch (Exception localException)
      {
        return;
      }
      label576: boolean bool = false;
    }
  }

  public final void aIQ()
  {
    if ((this.dkz != null) && (this.dkz.isPlaying()))
    {
      this.dkz.R(this.eTq);
      be.uB().K(this.eTq);
    }
  }

  public final void af(boolean paramBoolean)
  {
    boolean bool = true;
    aa.d("MicroMsg.AutoPlay", "isON:" + paramBoolean + "  hasSkip:" + this.cRt + " tick:" + au.O(this.cRo) + "  lt:" + this.cRo);
    if (this.cRt)
      if (!paramBoolean)
        this.cRt = bool;
    do
    {
      do
      {
        return;
        bool = false;
        break;
        if (this.gKH == null)
        {
          cRh.azI();
          return;
        }
        if ((!paramBoolean) && (this.cRo != -1L) && (au.O(this.cRo) > 400L))
        {
          this.cRt = bool;
          return;
        }
        this.cRt = false;
      }
      while (this.dkz.wD());
      if (this.gKH.aJP())
      {
        this.eTq = false;
        if (this.gKF != -1L)
          this.gKH.ag(paramBoolean);
        while (true)
        {
          aIQ();
          return;
          this.gKH.ag(bool);
        }
      }
    }
    while (this.gKF == -1L);
    this.gKH.ag(paramBoolean);
    new ay(new y(this, paramBoolean), false).bO(50L);
  }

  public final void b(int paramInt, ak paramak)
  {
    if ((paramak == null) || (!paramak.aBV()));
    bf localbf;
    do
    {
      return;
      localbf = new bf(paramak.getContent());
    }
    while (((localbf.getTime() == 0L) && (paramak.rO() == 0)) || ((paramak.getStatus() == 1) && (paramak.rO() == 1)) || ((paramak.rO() == 0) && (localbf.getTime() == -1L)));
    aII();
    Boolean localBoolean = (Boolean)be.uz().sr().get(4115);
    if ((localBoolean == null) || (!localBoolean.booleanValue()))
    {
      be.uz().sr().set(4115, Boolean.valueOf(true));
      aIS();
      this.gKI = dn.a(this.gKH, this.gKH.getString(2131165738), 4000L);
    }
    if ((this.dkz.isPlaying()) && (paramak.Bo() == this.gKF))
    {
      dI(true);
      return;
    }
    y(paramak);
    if ((paramak.rO() == 0) && (!bi.j(paramak)))
      nw(paramInt + 1);
    aIP();
  }

  public final void c(int paramInt, ak paramak)
  {
    if (paramak == null)
      return;
    aII();
    Boolean localBoolean = (Boolean)be.uz().sr().get(4115);
    if ((localBoolean == null) || (!localBoolean.booleanValue()))
    {
      be.uz().sr().set(4115, Boolean.valueOf(true));
      aIS();
      this.gKI = dn.a(this.gKH, this.gKH.getString(2131165738), 4000L);
    }
    if ((this.dkz.isPlaying()) && (paramak.Bo() == this.gKF))
    {
      dI(true);
      return;
    }
    y(paramak);
    if ((paramak.rO() == 0) && (!bi.j(paramak)))
      nw(paramInt + 1);
    aIP();
  }

  public final void d(int paramInt, ak paramak)
  {
    if (paramak == null)
      return;
    aII();
    Boolean localBoolean = (Boolean)be.uz().sr().get(4115);
    if ((localBoolean == null) || (!localBoolean.booleanValue()))
    {
      be.uz().sr().set(4115, Boolean.valueOf(true));
      aIS();
      this.gKI = dn.a(this.gKH, this.gKH.getString(2131165738), 4000L);
    }
    if ((this.dkz.isPlaying()) && (paramak.Bo() == this.gKF))
    {
      dI(true);
      return;
    }
    y(paramak);
    if ((paramak.rO() == 0) && (!bi.j(paramak)))
      nw(paramInt + 1);
    aIP();
  }

  public final void dG(boolean paramBoolean)
  {
    this.gKJ = paramBoolean;
    aII();
  }

  public final void dH(boolean paramBoolean)
  {
    this.eTq = paramBoolean;
  }

  public final void dI(boolean paramBoolean)
  {
    aa.d("MicroMsg.AutoPlay", "stop play");
    am.sF("keep_app_silent");
    this.dkz.stop();
    this.gKH.VX();
    aIN();
    if (this.gKE.isEmpty())
    {
      cRh.azI();
      this.cRn.azK();
    }
    if (paramBoolean)
      this.gKH.aJQ().notifyDataSetChanged();
    this.gKF = -1L;
    aIS();
  }

  public final void e(int paramInt, ak paramak)
  {
    if (paramak == null)
      return;
    aII();
    Boolean localBoolean = (Boolean)be.uz().sr().get(4115);
    if ((localBoolean == null) || (!localBoolean.booleanValue()))
    {
      be.uz().sr().set(4115, Boolean.valueOf(true));
      aIS();
      this.gKI = dn.a(this.gKH, this.gKH.getString(2131165738), 4000L);
    }
    if ((this.dkz.isPlaying()) && (paramak.Bo() == this.gKF))
    {
      dI(true);
      return;
    }
    y(paramak);
    if ((paramak.rO() == 0) && (!bi.j(paramak)))
      nw(paramInt + 1);
    aIP();
  }

  public final void i(ak paramak)
  {
    if ((this.gKK) && (this.gKE.isEmpty()));
    do
    {
      do
        return;
      while ((paramak == null) || (!paramak.aBV()) || (paramak.rO() == 1) || (paramak.aCl() == null) || (!paramak.aCl().equals(this.gKH.aJe())) || (!be.uA().wR()) || (this.gKH.isFinishing()));
      if (bi.k(paramak))
      {
        aa.e("MicroMsg.AutoPlay", "should not in this route");
        return;
      }
      y(paramak);
    }
    while ((this.cbJ) || (this.dkz.isPlaying()) || (!au.ag(this.gKH)));
    aIP();
  }

  public final boolean isPlaying()
  {
    return this.dkz.isPlaying();
  }

  public final void onDestroy()
  {
    release();
    this.gKH = null;
  }

  public final void pB()
  {
    aa.v("MicroMsg.AutoPlay", "voice play error");
    dI(true);
    aIP();
  }

  public final boolean pj()
  {
    return this.eTq;
  }

  public final void release()
  {
    if (this.cRn != null)
      this.cRn.azK();
  }

  public final void wE()
  {
    aa.v("MicroMsg.AutoPlay", "voice play completion isSpeakOn " + this.eTq);
    if (this.gKH != null)
    {
      aIR();
      this.gKH.VX();
      aIP();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.v
 * JD-Core Version:    0.6.2
 */