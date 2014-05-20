package com.tencent.mm.modelvoice;

import android.media.MediaPlayer;
import com.tencent.mm.a.c;
import com.tencent.mm.compatible.c.a;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bg;

final class bl
  implements d
{
  private MediaPlayer bZD = new MediaPlayer();
  private e cCF = null;
  private f cCG = null;
  private String rD = "";
  private int status = 0;

  public bl()
  {
    EC();
    ED();
  }

  public bl(byte paramByte)
  {
    this();
  }

  private void EC()
  {
    this.bZD.setOnCompletionListener(new bm(this));
  }

  private void ED()
  {
    this.bZD.setOnErrorListener(new bn(this));
  }

  private void b(boolean paramBoolean, int paramInt)
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
          break label125;
        s.ceL.dump();
        if (s.ceL.cdf != 1)
          break label125;
        this.bZD.setAudioStreamType(i);
        this.bZD.setDataSource(this.rD);
        this.bZD.prepare();
        if (paramInt > 0)
          this.bZD.seekTo(paramInt);
        this.bZD.start();
        return;
      }
      catch (Exception localException)
      {
        aa.e("VoicePlayer", "playImp : fail, exception = " + localException.getMessage());
        return;
      }
      j = 0;
      continue;
      label125: i = j;
    }
  }

  private boolean c(String paramString, boolean paramBoolean, int paramInt)
  {
    if (this.status != 0)
    {
      aa.e("VoicePlayer", "startPlay error status:" + this.status);
      return false;
    }
    this.rD = paramString;
    try
    {
      b(paramBoolean, paramInt);
      this.status = 1;
      return true;
    }
    catch (Exception localException1)
    {
      try
      {
        b(true, paramInt);
      }
      catch (Exception localException2)
      {
        aa.e("VoicePlayer", "startPlay File[" + this.rD + "] failed");
        this.status = -1;
      }
    }
    return false;
  }

  public final void R(boolean paramBoolean)
  {
    aa.d("VoicePlayer", "setSpeakerOn=" + paramBoolean);
    if (this.bZD == null)
      return;
    if (bg.wD())
    {
      aa.v("VoicePlayer", "setSpeakOn return when calling");
      return;
    }
    int i = this.bZD.getCurrentPosition();
    pv();
    this.bZD = new MediaPlayer();
    EC();
    ED();
    c(this.rD, paramBoolean, i);
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
    return c(paramString, paramBoolean, 0);
  }

  public final boolean pause()
  {
    if (this.status != 1)
    {
      aa.e("VoicePlayer", "pause not STATUS_PLAYING error status:" + this.status);
      return false;
    }
    try
    {
      this.bZD.pause();
      this.status = 2;
      return true;
    }
    catch (Exception localException)
    {
      aa.e("VoicePlayer", "pause File[" + this.rD + "] ErrMsg[" + localException.getStackTrace() + "]");
      this.status = -1;
    }
    return false;
  }

  public final boolean po()
  {
    if (this.status != 2)
    {
      aa.e("VoicePlayer", "resume not STATUS_PAUSE error status:" + this.status);
      return false;
    }
    try
    {
      this.bZD.start();
      this.status = 1;
      return true;
    }
    catch (Exception localException)
    {
      aa.e("VoicePlayer", "resume File[" + this.rD + "] ErrMsg[" + localException.getStackTrace() + "]");
      this.status = -1;
    }
    return false;
  }

  public final boolean pv()
  {
    if ((this.status != 1) && (this.status != 2))
    {
      aa.e("VoicePlayer", "stop not STATUS_PLAYING or STATUS_PAUSE error status:" + this.status);
      return false;
    }
    try
    {
      this.bZD.stop();
      this.bZD.release();
      this.status = 0;
      return true;
    }
    catch (Exception localException)
    {
      aa.e("VoicePlayer", "stop File[" + this.rD + "] ErrMsg[" + localException.getStackTrace() + "]");
      this.status = -1;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.bl
 * JD-Core Version:    0.6.2
 */