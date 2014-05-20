package com.tencent.mm.compatible.audio;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.platformtools.aa;

public final class ab
{
  private static int ccW = 100;
  private SimpleMediaRecorder ccU = new SimpleMediaRecorder(c.cbg);
  private ad ccV = null;
  private String rD = "";
  private int status = 0;

  public final void a(ad paramad)
  {
    this.ccV = paramad;
  }

  public final boolean bg(String paramString)
  {
    k localk = new k();
    if (this.rD.length() > 0)
    {
      aa.e("MicroMsg.SimpleVoiceRecorder", "Duplicate Call startRecord , maybe Stop Fail Before");
      return false;
    }
    this.rD = paramString;
    try
    {
      this.ccU.a(new ac(this));
      this.ccU.pt();
      this.ccU.pu();
      this.ccU.ps();
      this.ccU.setOutputFile(this.rD);
      this.ccU.pr();
      this.ccU.prepare();
      this.ccU.start();
      aa.d("MicroMsg.SimpleVoiceRecorder", "StartRecord File[" + this.rD + "] start time:" + localk.qh());
      this.status = 1;
      return true;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.SimpleVoiceRecorder", "StartRecord File[" + this.rD + "] ErrMsg[" + localException.getMessage() + "]");
      this.status = -1;
    }
    return false;
  }

  public final String getFileName()
  {
    return this.rD;
  }

  public final int getMaxAmplitude()
  {
    if (this.status == 1)
    {
      int i = this.ccU.getMaxAmplitude();
      if (i > ccW)
        ccW = i;
      return i * 100 / ccW;
    }
    return 0;
  }

  public final boolean pq()
  {
    if (this.ccU == null)
      return true;
    try
    {
      this.ccU.pv();
      this.ccU.release();
      this.rD = "";
      this.status = 0;
      return true;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.SimpleVoiceRecorder", "StopRecord File[" + this.rD + "] ErrMsg[" + localException.getMessage() + "]");
      this.status = -1;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.ab
 * JD-Core Version:    0.6.2
 */