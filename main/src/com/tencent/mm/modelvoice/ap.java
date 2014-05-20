package com.tencent.mm.modelvoice;

import android.content.Context;
import com.tencent.mm.compatible.audio.e;
import com.tencent.mm.compatible.audio.j;
import com.tencent.mm.compatible.g.a;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.r;
import com.tencent.mm.n.s;
import com.tencent.mm.n.t;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;

public final class ap
  implements j, r
{
  private static int ccW = 100;
  private at cCA = null;
  private a cCa;
  private boolean cCk = false;
  private long cCm;
  private long cCn = 0L;
  private int cCo = 0;
  private int cCq = 0;
  private t cCr;
  private s cCs = null;
  private ay cCt = new ay(new aq(this), true);
  private boolean cCu = false;
  private az cCz = null;
  private String rD = "";

  public ap(Context paramContext)
  {
    this.cCa = new a(paramContext);
  }

  public final void a(s params)
  {
    this.cCs = params;
  }

  public final void a(t paramt)
  {
    this.cCr = paramt;
  }

  public final void bA(int paramInt)
  {
    aa.d("MicroMsg.SceneVoice.Recorder", "dkbt Recorder onAudioStatChange :" + paramInt);
    if (this.cCu)
      return;
    this.cCu = true;
    be.uB().b(this);
    this.cCz = new az();
    new as(this);
    if (this.cCz != null);
    this.cCA = new at(this);
    this.cCA.start();
    this.cCq = 1;
    this.cCt.bO(3000L);
    aa.d("MicroMsg.SceneVoice.Recorder", "start end time:" + cj.O(this.cCm));
  }

  public final boolean cancel()
  {
    aa.d("MicroMsg.SceneVoice.Recorder", "cancel Record :" + this.rD);
    try
    {
      aa.d("MicroMsg.SceneVoice.Recorder", "stop synchronized Record :" + this.rD);
      if (this.cCz != null)
      {
        this.cCz.pq();
        this.cCa.qc();
      }
      bi.ht(this.rD);
      bc.Et().run();
      this.rD = "";
      return true;
    }
    finally
    {
    }
  }

  public final boolean et(String paramString)
  {
    reset();
    this.cCm = cj.FE();
    if (paramString == null)
    {
      aa.d("MicroMsg.SceneVoice.Recorder", "Start Record toUser null");
      return false;
    }
    this.cCk = paramString.equals("_USER_FOR_THROWBOTTLE_");
    if (paramString.equals("medianote"))
      v.tl();
    this.rD = bi.hr(paramString);
    if ((this.rD == null) || (this.rD.length() <= 0))
    {
      aa.d("MicroMsg.SceneVoice.Recorder", "Start Record DBError ");
      return false;
    }
    be.uB().a(this);
    int i = be.uB().pe();
    this.cCu = false;
    if (i != 0)
      bA(100);
    while (true)
    {
      return true;
      new ar(this).sendEmptyMessageDelayed(0, 50L);
    }
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
    aa.d("MicroMsg.SceneVoice.Recorder", "stop Record :" + this.rD);
    try
    {
      aa.d("MicroMsg.SceneVoice.Recorder", "stop synchronized Record :" + this.rD);
      if (this.cCz != null)
      {
        this.cCz.pq();
        this.cCa.qc();
      }
      if (this.cCq != 2)
      {
        bi.hv(this.rD);
        this.rD = null;
        aa.d("MicroMsg.SceneVoice.Recorder", "Stop " + this.rD + " by not onPart: " + cj.O(this.cCm));
        this.cCq = -1;
        return bool;
      }
    }
    finally
    {
    }
    this.cCo = ((int)wG());
    if ((this.cCo < 800L) || ((this.cCk) && (this.cCo < 1000L)))
    {
      aa.d("MicroMsg.SceneVoice.Recorder", "Stop " + this.rD + " by voiceLen: " + this.cCo);
      bi.hv(this.rD);
      this.rD = "";
    }
    while (true)
    {
      this.rD = "";
      break;
      bi.n(this.rD, this.cCo, 0);
      bc.Et().run();
      bool = true;
      aa.d("MicroMsg.SceneVoice.Recorder", "Stop file success: " + this.rD);
    }
  }

  public final void reset()
  {
    if (this.cCz != null)
    {
      this.cCz.pq();
      this.cCa.qc();
      aa.e("MicroMsg.SceneVoice.Recorder", "Reset recorder.stopReocrd");
    }
    this.rD = "";
    this.cCm = 0L;
    this.cCA = null;
    this.cCq = 0;
    this.cCn = 0L;
    this.cCr = null;
    this.cCs = null;
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
    aa.d("MicroMsg.SceneVoice.Recorder", "recordStartTime " + this.cCn);
    if (this.cCn == 0L)
      return 0L;
    return cj.O(this.cCn);
  }

  public final int wH()
  {
    return this.cCo;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.ap
 * JD-Core Version:    0.6.2
 */