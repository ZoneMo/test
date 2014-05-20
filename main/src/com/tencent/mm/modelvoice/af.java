package com.tencent.mm.modelvoice;

import android.content.Context;
import com.tencent.mm.compatible.audio.b;
import com.tencent.mm.compatible.audio.e;
import com.tencent.mm.compatible.audio.j;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.r;
import com.tencent.mm.n.s;
import com.tencent.mm.n.t;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;

public class af
  implements j, r
{
  private com.tencent.mm.compatible.g.a cCa;
  private bo cCj = null;
  private boolean cCk = false;
  private boolean cCl = false;
  private long cCm;
  private long cCn = 0L;
  private int cCo = 0;
  private aj cCp = null;
  private int cCq = 0;
  protected t cCr;
  protected s cCs = null;
  private ay cCt = new ay(new ag(this), true);
  private boolean cCu = false;
  private String rD = "";

  public af(Context paramContext)
  {
    this.cCa = new com.tencent.mm.compatible.g.a(paramContext);
  }

  public final boolean Em()
  {
    return et("_USER_FOR_THROWBOTTLE_");
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
    this.cCj = new bo(b.oZ());
    ai localai = new ai(this);
    if (this.cCj != null)
      this.cCj.a(localai);
    this.cCp = new aj(this);
    this.cCp.start();
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
      if (this.cCj != null)
      {
        this.cCj.pq();
        this.cCa.qc();
      }
      bi.ht(this.rD);
      bc.Et().run();
      if ((this.cCj != null) && (!cj.hX(this.rD)))
      {
        com.tencent.mm.compatible.e.a locala = new com.tencent.mm.compatible.e.a();
        locala.bl(this.rD);
        locala.l(wG());
        locala.bE(1);
        locala.bF(this.cCj.Ec());
        m.dZN.j(10513, locala.qb());
      }
      this.rD = "";
      return true;
    }
    finally
    {
    }
  }

  public final boolean et(String paramString)
  {
    aa.d("MicroMsg.SceneVoice.Recorder", "Start Record to  " + paramString);
    reset();
    this.cCm = cj.FE();
    if (paramString == null)
    {
      aa.d("MicroMsg.SceneVoice.Recorder", "Start Record toUser null");
      return false;
    }
    this.cCk = paramString.equals("_USER_FOR_THROWBOTTLE_");
    if (paramString.equals("medianote"))
    {
      if ((0x4000 & v.tl()) == 0)
        this.cCl = true;
    }
    else
    {
      if (!this.cCk)
        break label133;
      this.rD = br.hx(v.th());
    }
    while (true)
    {
      if ((this.rD != null) && (this.rD.length() > 0))
        break label164;
      aa.d("MicroMsg.SceneVoice.Recorder", "Start Record DBError ");
      return false;
      this.cCl = false;
      break;
      label133: if (this.cCl)
        this.rD = br.hx("medianote");
      else
        this.rD = bi.hr(paramString);
    }
    label164: be.uB().a(this);
    int i = be.uB().pe();
    this.cCu = false;
    if (i != 0)
      bA(100);
    while (true)
    {
      return true;
      new ah(this).sendEmptyMessageDelayed(0, 50L);
    }
  }

  public String getFileName()
  {
    return this.rD;
  }

  public final int getMaxAmplitude()
  {
    if (this.cCj == null)
      return 0;
    return this.cCj.getMaxAmplitude();
  }

  public boolean pv()
  {
    boolean bool1 = true;
    boolean bool2 = false;
    be.uB().pf();
    aa.i("MicroMsg.SceneVoice.Recorder", "stop Record :" + this.rD);
    if ((this.cCj != null) && (!cj.hX(this.rD)))
    {
      com.tencent.mm.compatible.e.a locala = new com.tencent.mm.compatible.e.a();
      locala.bl(this.rD);
      locala.l(wG());
      locala.bE(2);
      locala.bF(this.cCj.Ec());
      m.dZN.j(10513, locala.qb());
    }
    try
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.rD;
      arrayOfObject[1] = this.cCj;
      aa.d("MicroMsg.SceneVoice.Recorder", "stop synchronized Record:%s, recorder:%s", arrayOfObject);
      if (this.cCj != null)
      {
        this.cCj.pq();
        this.cCa.qc();
      }
      if (this.cCq != 2)
      {
        bi.hv(this.rD);
        this.rD = null;
        aa.i("MicroMsg.SceneVoice.Recorder", "Stop " + this.rD + " by not onPart: " + cj.O(this.cCm));
        this.cCq = -1;
        return bool2;
      }
    }
    finally
    {
    }
    this.cCo = ((int)wG());
    if ((this.cCo < 800L) || ((this.cCk) && (this.cCo < 1000L)))
    {
      aa.i("MicroMsg.SceneVoice.Recorder", "Stop " + this.rD + " by voiceLen: " + this.cCo);
      bi.hv(this.rD);
      this.rD = "";
      bool1 = false;
    }
    while (true)
    {
      this.rD = "";
      bool2 = bool1;
      break;
      bi.n(this.rD, this.cCo, 0);
      bc.Et().run();
      aa.i("MicroMsg.SceneVoice.Recorder", "Stop file success: " + this.rD);
    }
  }

  public final void reset()
  {
    if (this.cCj != null)
    {
      this.cCj.pq();
      this.cCa.qc();
      aa.e("MicroMsg.SceneVoice.Recorder", "Reset recorder.stopReocrd");
    }
    this.rD = "";
    this.cCm = 0L;
    this.cCp = null;
    this.cCq = 0;
    this.cCn = 0L;
  }

  public final boolean wF()
  {
    if (this.cCj == null);
    while (this.cCj.getStatus() != 1)
      return false;
    return true;
  }

  public final long wG()
  {
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
 * Qualified Name:     com.tencent.mm.modelvoice.af
 * JD-Core Version:    0.6.2
 */