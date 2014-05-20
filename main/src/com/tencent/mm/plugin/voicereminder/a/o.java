package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.compatible.audio.e;
import com.tencent.mm.compatible.audio.j;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelvoice.az;
import com.tencent.mm.n.t;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

public final class o
  implements j, com.tencent.mm.n.r
{
  private static int ccW = 100;
  private long cCm = 0L;
  private long cCn = 0L;
  private int cCo = 0;
  private int cCq = 0;
  protected t cCr;
  protected com.tencent.mm.n.s cCs = null;
  private ay cCt = new ay(new p(this), true);
  private boolean cCu = false;
  private az cCz = null;
  private s ePl;
  private String rD = "";

  public final void a(com.tencent.mm.n.s params)
  {
    this.cCs = params;
  }

  public final void a(t paramt)
  {
    this.cCr = paramt;
  }

  public final void bA(int paramInt)
  {
    aa.d("MicroMsg.VoiceRemindRecorder", " Recorder onAudioStatChange :" + paramInt);
    if (this.cCu)
      return;
    this.cCu = true;
    be.uB().b(this);
    this.cCz = new az();
    new q(this);
    if (this.cCz != null);
    this.ePl = new s(this);
    this.ePl.start();
    this.cCq = 1;
    this.cCt.bO(3000L);
    aa.d("MicroMsg.VoiceRemindRecorder", "start end time:" + au.O(this.cCm));
  }

  public final boolean cancel()
  {
    aa.d("MicroMsg.VoiceRemindRecorder", "cancel Record :" + this.rD);
    try
    {
      aa.d("MicroMsg.VoiceRemindRecorder", "stop synchronized Record :" + this.rD);
      if (this.cCz != null)
        this.cCz.pq();
      n.ht(this.rD);
      f.alj().run();
      this.rD = "";
      return true;
    }
    finally
    {
    }
  }

  public final boolean et(String paramString)
  {
    String str = y.gY(v.th());
    m localm = new m();
    localm.gR(str);
    localm.setUser(paramString);
    localm.G(System.currentTimeMillis() / 1000L);
    localm.hn(str);
    localm.H(System.currentTimeMillis() / 1000L);
    localm.setStatus(1);
    localm.gS(v.th());
    localm.cL(-1);
    if (f.ali().b(localm) == -1)
      str = null;
    this.rD = str;
    be.uB().a(this);
    int i = be.uB().pe();
    this.cCu = false;
    if (i != 0)
    {
      bA(100);
      return false;
    }
    new r(this).sendEmptyMessageDelayed(0, 50L);
    return false;
  }

  public final String getFileName()
  {
    return this.rD;
  }

  public final int getMaxAmplitude()
  {
    if (this.cCz != null)
    {
      int i = this.cCz.getMaxAmplitude();
      if (i > ccW)
        ccW = i;
      aa.d("getMaxAmplitude", " map: " + i + " max:" + ccW + " per:" + i * 100 / ccW);
      return i * 100 / ccW;
    }
    return 0;
  }

  public final boolean pv()
  {
    boolean bool = false;
    be.uB().pf();
    aa.d("MicroMsg.VoiceRemindRecorder", "stop Record :" + this.rD);
    try
    {
      aa.d("MicroMsg.VoiceRemindRecorder", "stop synchronized Record :" + this.rD);
      if (this.cCz != null)
        this.cCz.pq();
      if (this.cCq != 2)
      {
        n.hv(this.rD);
        this.rD = null;
        aa.d("MicroMsg.VoiceRemindRecorder", "Stop " + this.rD + " by not onPart: " + au.O(this.cCm));
        this.cCq = -1;
        return bool;
      }
    }
    finally
    {
    }
    this.cCo = ((int)wG());
    if ((this.cCo < 800L) || (this.cCo < 1000L))
    {
      aa.d("MicroMsg.VoiceRemindRecorder", "Stop " + this.rD + " by voiceLen: " + this.cCo);
      n.hv(this.rD);
      this.rD = "";
    }
    while (true)
    {
      this.rD = "";
      break;
      n.U(this.rD, this.cCo);
      f.alj().run();
      bool = true;
      aa.d("MicroMsg.VoiceRemindRecorder", "Stop file success: " + this.rD);
    }
  }

  public final void reset()
  {
    if (this.cCz != null)
    {
      this.cCz.pq();
      aa.e("MicroMsg.VoiceRemindRecorder", "Reset recorder.stopReocrd");
    }
    this.rD = "";
    this.cCm = 0L;
    this.ePl = null;
    this.cCq = 0;
    this.cCn = 0L;
  }

  public final boolean wF()
  {
    if (this.cCz == null);
    while (this.cCz.getStatus() != 1)
      return false;
    return true;
  }

  public final long wG()
  {
    if (this.cCn <= 0L)
      return 0L;
    return au.O(this.cCn);
  }

  public final int wH()
  {
    return this.cCo;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.o
 * JD-Core Version:    0.6.2
 */