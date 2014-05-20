package com.tencent.mm.modelvoice;

import android.media.AudioRecord;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.qqpinyin.voicerecoapi.a;
import java.io.FileOutputStream;

public final class az
{
  private AudioRecord cCX = null;
  int cCY = 0;
  private int cbM = 5;
  private int cck = 0;
  private a cys = null;
  private FileOutputStream cyt = null;
  private String rD = "";
  private int status = 0;

  public final int getMaxAmplitude()
  {
    aa.d("amp", "cAmplitude " + this.cck);
    int i = this.cck;
    this.cck = 0;
    return i;
  }

  public final int getStatus()
  {
    return this.status;
  }

  public final boolean hk(String paramString)
  {
    if (this.rD.length() > 0)
    {
      aa.e("MicroMsg.SpeexRecorder", "Duplicate Call startRecord , maybe Stop Fail Before");
      return false;
    }
    try
    {
      this.status = 1;
      this.cck = 0;
      new Thread(new ba(this)).start();
      label47: this.rD = paramString;
      return true;
    }
    catch (Exception localException)
    {
      break label47;
    }
  }

  public final boolean pq()
  {
    this.rD = "";
    this.status = 0;
    if (this.cCX == null);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.az
 * JD-Core Version:    0.6.2
 */