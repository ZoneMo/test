package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.audio.c;
import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.platformtools.aa;

public final class bo
{
  private static int ccW = 100;
  private MediaRecorder cDj;
  private bq cDk = null;
  private String rD = "";
  private int status = 0;

  public bo(c paramc)
  {
    this.cDj = new MediaRecorder(paramc);
  }

  public final int Ec()
  {
    return this.cDj.Ec();
  }

  public final void a(bq parambq)
  {
    this.cDk = parambq;
  }

  public final String getFileName()
  {
    return this.rD;
  }

  public final int getMaxAmplitude()
  {
    if (this.status == 1)
    {
      int i = this.cDj.getMaxAmplitude();
      if (i > ccW)
        ccW = i;
      return i * 100 / ccW;
    }
    return 0;
  }

  public final int getStatus()
  {
    return this.status;
  }

  public final boolean hk(String paramString)
  {
    k localk = new k();
    if (this.rD.length() > 0)
    {
      aa.e("VoiceRecorder", "Duplicate Call startRecord , maybe Stop Fail Before");
      return false;
    }
    this.rD = paramString;
    try
    {
      this.cDj.a(new bp(this));
      this.cDj.pt();
      this.cDj.pu();
      this.cDj.ps();
      this.cDj.setOutputFile(this.rD);
      this.cDj.pr();
      this.cDj.prepare();
      this.cDj.start();
      aa.d("VoiceRecorder", "StartRecord File[" + this.rD + "] start time:" + localk.qh());
      this.status = 1;
      return true;
    }
    catch (Exception localException)
    {
      aa.e("VoiceRecorder", "StartRecord File[" + this.rD + "] ErrMsg[" + localException.getMessage() + "]");
      this.status = -1;
    }
    return false;
  }

  public final boolean pq()
  {
    if (this.cDj == null)
      return true;
    try
    {
      this.cDj.pv();
      this.cDj.release();
      this.rD = "";
      this.status = 0;
      return true;
    }
    catch (Exception localException)
    {
      aa.e("VoiceRecorder", "StopRecord File[" + this.rD + "] ErrMsg[" + localException.getMessage() + "]");
      this.status = -1;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.bo
 * JD-Core Version:    0.6.2
 */