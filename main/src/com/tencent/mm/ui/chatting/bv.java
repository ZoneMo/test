package com.tencent.mm.ui.chatting;

import android.media.ToneGenerator;
import android.os.Handler;
import android.os.Looper;
import android.os.Vibrator;
import android.widget.ListView;
import android.widget.Toast;
import com.tencent.mm.model.ah;
import com.tencent.mm.model.al;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.modelvoice.af;
import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.n.r;
import com.tencent.mm.n.s;
import com.tencent.mm.n.t;
import com.tencent.mm.p.p;
import com.tencent.mm.plugin.voicereminder.a.o;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;
import com.tencent.mm.pluginsdk.ui.chat.an;
import com.tencent.mm.pluginsdk.ui.chat.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.am;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.z.n;

public final class bv
  implements an
{
  private i cQI;
  private Toast cSA;
  private final ay cSR = new ay(new ca(this), true);
  private final ay cSS = new ay(new cb(this), true);
  private final s cSU = new bw(this);
  private ToneGenerator cSy;
  private ChatFooter dKO;
  private final t dKT = new bx(this);
  private l dLC = new cd(this);
  private boolean gJU;
  private ChattingUI gKH;
  private com.tencent.mm.storage.ca gLo;
  private ListView gMh;
  private es gMi;
  private v gMj;
  private r gMk;
  private String gMl;
  private String gMm;
  private boolean gMn;
  private boolean gMo;
  private final jx gMp;
  private volatile boolean gMq = false;
  private volatile boolean gMr = false;
  private Vibrator vibrator;

  public bv(ListView paramListView, es parames, ChattingUI paramChattingUI, ChatFooter paramChatFooter, v paramv, String paramString)
  {
    this.gMh = paramListView;
    this.gMi = parames;
    this.gKH = paramChattingUI;
    this.dKO = paramChatFooter;
    this.gMj = paramv;
    this.gMl = paramString;
    this.cQI = be.uz().su().tO(paramString);
    this.gLo = be.uz().sz().vB(new com.tencent.mm.storage.cb(aJe()).vA(""));
    this.gMn = aJe().endsWith("@chatroom");
    this.gMo = w.cq(aJe());
    this.gMp = new jx(paramChattingUI);
    boolean bool1;
    if (!this.gMn)
    {
      boolean bool2 = this.gMo;
      bool1 = false;
      if (!bool2);
    }
    else
    {
      bool1 = true;
    }
    this.gJU = bool1;
    int i = this.gKH.aEV();
    int j = this.gKH.aEU();
    int k = (int)(100.0F * (i / j));
    try
    {
      this.cSy = new ToneGenerator(3, k);
      label278: this.vibrator = ((Vibrator)paramChattingUI.getSystemService("vibrator"));
      if (w.cQ(this.gMl))
        this.gMk = new o();
      while (true)
      {
        this.gMk.a(this.dKT);
        this.gMk.a(this.cSU);
        paramChatFooter.a(this.dLC);
        return;
        if (p.eJ(this.gMl))
          this.gMk = new com.tencent.mm.modelvoice.ap(this.gKH);
        else
          this.gMk = new af(this.gKH);
      }
    }
    catch (Exception localException)
    {
      break label278;
    }
  }

  private void VX()
  {
    this.gMh.setKeepScreenOn(false);
  }

  @Deprecated
  private void aJb()
  {
    this.gMh.postDelayed(new cc(this), 10L);
  }

  private boolean aJd()
  {
    this.gKH.dg(true);
    this.gKH.df(true);
    if (this.gMk != null)
    {
      int j;
      int i;
      label71: boolean bool;
      long l;
      if (this.gMk.wF())
        if ((this.cQI.getUsername().equals("medianote")) && ((0x4000 & com.tencent.mm.model.v.tl()) == 0))
        {
          j = 1;
          if (j == 0)
            break label211;
          i = 1;
          bool = this.gMk.pv();
          this.cSR.azn();
          this.cSS.azn();
          if (i != 0)
          {
            ak localak = new ak();
            localak.uK("medianote");
            localak.setType(34);
            localak.bZ(1);
            localak.uN(this.gMm);
            localak.setStatus(2);
            localak.setContent(bf.a(com.tencent.mm.model.v.th(), this.gMk.wH(), false));
            localak.G(com.tencent.mm.model.bv.dA("medianote"));
            l = be.uz().sw().v(localak);
            if (l > 0L)
              break label216;
            aa.e("MicroMsg.ChattingFooterEventImpl", "insertLocalMsg fail");
          }
        }
      while (true)
      {
        am.sF("keep_app_silent");
        return bool;
        j = 0;
        break;
        label211: i = 0;
        break label71;
        label216: aa.i("MicroMsg.ChattingFooterEventImpl", "insertLocalMsg success, msgId = " + l);
      }
    }
    aa.i("MicroMsg.ChattingFooterEventImpl", "stopRecording recorder == null");
    return false;
  }

  public final boolean VM()
  {
    this.gMq = true;
    if (!this.gMr)
    {
      aa.i("MicroMsg.ChattingFooterEventImpl", "jacks in voice rcd stop but not begin.");
      return false;
    }
    this.gMr = false;
    VX();
    if (!aJd())
    {
      this.dKO.asx();
      aa.i("MicroMsg.ChattingFooterEventImpl", "record stop on stop request setRcdTooShort");
    }
    while (true)
    {
      this.gMj.aIL();
      this.gKH.nE(4);
      be.nS().resume();
      be.nT().og();
      this.gKH.dL(false);
      return true;
      this.dKO.Oe();
      aa.i("MicroMsg.ChattingFooterEventImpl", "record stop on stop request resetRcdStatus");
    }
  }

  public final boolean VO()
  {
    aa.v("MicroMsg.ChattingFooterEventImpl", "record cancel on cancel request");
    this.gMq = true;
    if (!this.gMr)
    {
      aa.i("MicroMsg.ChattingFooterEventImpl", "jacks in voice rcd stop but not begin.");
      return false;
    }
    this.gMr = false;
    VX();
    this.gKH.dg(true);
    this.gKH.df(true);
    if (this.gMk != null)
    {
      this.gMk.cancel();
      this.cSR.azn();
      this.cSS.azn();
    }
    this.dKO.Oe();
    this.gMj.aIL();
    this.gKH.nE(4);
    be.nS().resume();
    be.nT().og();
    this.gKH.dL(false);
    return true;
  }

  public final boolean VP()
  {
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(this.gKH);
      return false;
    }
    if (this.gMk != null)
    {
      if (this.cSy != null)
        this.cSy.startTone(24);
      this.gMh.postDelayed(new bz(this), 200L);
    }
    this.gMq = false;
    new Handler(Looper.myLooper()).postDelayed(new by(this), 200L);
    return true;
  }

  public final void VQ()
  {
    aJb();
  }

  public final void VR()
  {
    aJb();
  }

  public final void VS()
  {
    aJb();
  }

  protected final void aJc()
  {
    this.gMh.setKeepScreenOn(true);
  }

  public final String aJe()
  {
    if ((this.cQI != null) && (i.tC(this.cQI.getUsername())))
      return this.gMl;
    if (this.cQI == null)
      return null;
    return this.cQI.getUsername();
  }

  public final boolean ls(String paramString)
  {
    return this.gKH.wD(paramString);
  }

  public final void onPause()
  {
    aJd();
    this.cSR.azn();
    this.cSS.azn();
    n.b(this.gMp);
  }

  public final void onResume()
  {
    n.a(this.gMp);
  }

  public final void release()
  {
    if (this.cSy != null)
      this.cSy.release();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bv
 * JD-Core Version:    0.6.2
 */