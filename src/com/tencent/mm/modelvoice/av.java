package com.tencent.mm.modelvoice;

import android.content.Context;
import android.media.AudioTrack;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import com.tencent.mm.a.c;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.FileInputStream;

public final class av
  implements d
{
  private AudioTrack cCE;
  private e cCF = null;
  private f cCG = null;
  private int cCH = 2;
  private int cCI = 1;
  private int cCJ = 20;
  private Thread cCK;
  private MediaPlayer.OnCompletionListener cCL = new aw(this);
  private MediaPlayer.OnErrorListener cCM = new ax(this);
  private int cCN;
  int cCO = 0;
  private boolean cCP = false;
  private String cCQ = "";
  private String cCR = "";
  private byte[] cCS = new byte[com.tencent.qqpinyin.voicerecoapi.a.hwa];
  private int cCT = 0;
  private FileInputStream cCU = null;
  private int cCV = 314;
  private com.tencent.mm.compatible.g.a cCa;
  private int cbz = 16000;
  private com.tencent.qqpinyin.voicerecoapi.a cys = null;
  private String rD = "";
  private int status = 0;

  public av()
  {
    int i = this.cys.aPM();
    if (i != 0)
      aa.e("speex", "res: " + i);
  }

  public av(Context paramContext)
  {
    this();
    this.cCa = new com.tencent.mm.compatible.g.a(paramContext);
  }

  private void Z(boolean paramBoolean)
  {
    int i = 3;
    if (!c.as(this.rD))
      return;
    int j;
    if (paramBoolean)
      j = i;
    while (true)
    {
      try
      {
        if (!s.ceL.ccY)
          break label240;
        s.ceL.dump();
        if (s.ceL.cdf != 1)
          break label240;
        this.cCN = AudioTrack.getMinBufferSize(this.cbz, this.cCH, 2);
        if (this.cCE != null)
        {
          this.cCE.stop();
          this.cCE.release();
          this.cCE = null;
        }
        this.cCE = new AudioTrack(i, this.cbz, this.cCH, 2, 8 * this.cCN, 1);
        this.cCV = (2 * (this.cbz / 1000 * this.cCI * this.cCJ));
        if ((paramBoolean) && (this.cCa != null))
          this.cCa.requestFocus();
        if (this.cCE == null)
          break;
        this.cCE.play();
        this.cCK = new ay(this);
        this.cCK.start();
        return;
      }
      catch (Exception localException)
      {
        if (this.cCa != null)
          this.cCa.qc();
        aa.e("MicroMsg.SpeexPlayer", "playImp : fail, exception = " + localException.getMessage());
        return;
      }
      j = 0;
      continue;
      label240: i = j;
    }
  }

  private boolean m(String paramString, boolean paramBoolean)
  {
    if (this.status != 0)
    {
      aa.e("MicroMsg.SpeexPlayer", "startPlay error status:" + this.status);
      return false;
    }
    this.status = 1;
    this.rD = paramString;
    try
    {
      Z(paramBoolean);
      return true;
    }
    catch (Exception localException1)
    {
      try
      {
        Z(true);
      }
      catch (Exception localException2)
      {
        aa.e("MicroMsg.SpeexPlayer", "startPlay File[" + this.rD + "] failed");
        this.status = -1;
      }
    }
    return false;
  }

  public final void R(boolean paramBoolean)
  {
    int i = 3;
    this.cCP = true;
    int j;
    if (this.cCI == 2)
    {
      this.cCH = i;
      this.cCN = AudioTrack.getMinBufferSize(this.cbz, this.cCH, 2);
      if (this.cCE != null)
      {
        this.cCE.stop();
        this.cCE.release();
        this.cCE = null;
      }
      if (!paramBoolean)
        break label143;
      j = i;
      label68: if (!s.ceL.ccY)
        break label148;
      s.ceL.dump();
      if (s.ceL.cdf != 1)
        break label148;
    }
    while (true)
    {
      this.cCE = new AudioTrack(i, this.cbz, this.cCH, 2, 8 * this.cCN, 1);
      this.cCE.play();
      this.cCP = false;
      return;
      this.cCH = 2;
      break;
      label143: j = 0;
      break label68;
      label148: i = j;
    }
  }

  public final void a(e parame)
  {
    this.cCF = parame;
  }

  public final void a(f paramf)
  {
    this.cCG = paramf;
  }

  public final int getStatus()
  {
    return this.status;
  }

  public final boolean isPlaying()
  {
    return this.status == 1;
  }

  public final boolean k(String paramString, boolean paramBoolean)
  {
    return m(paramString, paramBoolean);
  }

  public final boolean pause()
  {
    if (this.status != 1)
      return false;
    this.status = 2;
    synchronized (this.cCR)
    {
      try
      {
        aa.v("MicroMsg.SpeexPlayer", "before mOk.wait");
        long l = System.currentTimeMillis();
        this.cCR.wait();
        aa.v("MicroMsg.SpeexPlayer", "after mOk.wait time:" + (System.currentTimeMillis() - l));
        return true;
      }
      catch (Exception localException)
      {
        return false;
      }
    }
  }

  public final boolean po()
  {
    if (this.status != 2)
      return false;
    this.status = 1;
    synchronized (this.cCQ)
    {
      try
      {
        aa.v("MicroMsg.SpeexPlayer", "before mpause.notify");
        this.cCQ.notify();
        aa.v("MicroMsg.SpeexPlayer", "after mpause.notify");
        return true;
      }
      catch (Exception localException)
      {
        return false;
      }
    }
  }

  public final boolean pv()
  {
    aa.e("MicroMsg.SpeexPlayer", "stop  status:" + this.status);
    if (this.status != 1)
    {
      aa.e("MicroMsg.SpeexPlayer", "stop  error status:" + this.status);
      return false;
    }
    this.status = 3;
    synchronized (this.cCQ)
    {
      try
      {
        this.cCQ.notify();
        return true;
      }
      catch (Exception localException)
      {
        return false;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.av
 * JD-Core Version:    0.6.2
 */