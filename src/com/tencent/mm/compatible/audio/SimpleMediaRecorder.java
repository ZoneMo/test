package com.tencent.mm.compatible.audio;

import android.media.MediaRecorder;
import com.tencent.mm.compatible.c.n;
import com.tencent.mm.compatible.g.k;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.sdk.platformtools.cj;

public class SimpleMediaRecorder
{
  public static final int[] cci = { 13, 14, 16, 18, 20, 21, 27, 32 };
  private static long ccp = 0L;
  private static Object ccq = new Object();
  private z ccj;
  private int cck = 0;
  private String ccl = null;
  private v ccm = null;
  private long ccn = 0L;
  private long cco = 0L;
  private MediaRecorder ccr;
  private int ccs;
  private o cct = null;
  private c ccu;
  private aa ccv;
  private int ccw = 8000;
  private int ccx = 0;
  private k ccy = new k();
  private r ccz = new u(this);

  public SimpleMediaRecorder(c paramc)
  {
    this.ccu = paramc;
    if (paramc == c.cbg)
    {
      this.ccs = 7;
      this.ccr = new MediaRecorder();
      return;
    }
    this.ccw = 8000;
    int i = cj.a((Integer)n.pK().get(102401), 0);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SimpleMediaRecorder", "dk16k sr:" + this.ccw + " notsu:" + i);
    if (i == 1)
      this.ccw = 8000;
    this.cck = 0;
    this.ccl = null;
    this.ccm = null;
    try
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SimpleMediaRecorder", "!!out mutex :" + ccq.hashCode());
      synchronized (ccq)
      {
        this.cct = new o(this.ccw, 120, true, 0);
        this.cct.a(this.ccz);
        this.ccv = aa.ccO;
        this.ccs = 1;
        return;
      }
    }
    catch (Exception localException)
    {
      if (localException.getMessage() == null)
        break label297;
    }
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SimpleMediaRecorder", localException.getMessage());
    while (true)
    {
      this.ccv = aa.ccR;
      break;
      label297: com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SimpleMediaRecorder", "Unknown error occured while initializing recording");
    }
  }

  private static native boolean native_init();

  private static native boolean native_pcm2amr(int paramInt1, byte[] paramArrayOfByte, int paramInt2, PByteArray paramPByteArray, int paramInt3);

  private static native boolean native_pcmresamp(byte[] paramArrayOfByte, int paramInt, PByteArray paramPByteArray);

  private static native boolean native_release();

  public final void a(z paramz)
  {
    if (this.ccu == c.cbg)
      if (this.ccr != null);
    while (true)
    {
      return;
      this.ccj = paramz;
      this.ccr.setOnErrorListener(new t(this));
      this.ccv = aa.ccR;
      return;
      try
      {
        if (this.ccv == aa.ccO)
        {
          this.ccj = paramz;
          return;
        }
      }
      catch (Exception localException)
      {
        if (localException.getMessage() == null)
          break label87;
      }
    }
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SimpleMediaRecorder", localException.getMessage());
    while (true)
    {
      this.ccv = aa.ccR;
      return;
      label87: com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SimpleMediaRecorder", "Unknown error occured while setting output path");
    }
  }

  public final int getMaxAmplitude()
  {
    if (this.ccu == c.cbg)
      if (this.ccr != null);
    while (this.ccv != aa.ccQ)
    {
      return 0;
      return this.ccr.getMaxAmplitude();
    }
    int i = this.cck;
    this.cck = 0;
    return i;
  }

  public final void pr()
  {
    if (this.ccu == c.cbg)
    {
      if (this.ccr == null)
        return;
      this.ccr.setMaxDuration(3600010);
      return;
    }
    this.ccn = 3600010L;
  }

  public final void prepare()
  {
    if (this.ccu == c.cbg)
    {
      if (this.ccr == null)
        return;
      this.ccr.prepare();
      return;
    }
    if ((this.ccv != aa.ccO) || (this.ccl == null))
    {
      this.ccv = aa.ccR;
      release();
      return;
    }
    this.ccv = aa.ccP;
  }

  public final void ps()
  {
    if ((this.ccu != c.cbg) || (this.ccr == null))
      return;
    this.ccr.setAudioEncoder(1);
  }

  public final void pt()
  {
    if ((this.ccu != c.cbg) || (this.ccr == null))
      return;
    this.ccr.setAudioSource(1);
  }

  public final void pu()
  {
    if ((this.ccu != c.cbg) || (this.ccr == null))
      return;
    this.ccr.setOutputFormat(3);
  }

  public final boolean pv()
  {
    if (this.ccu == c.cbg)
    {
      if (this.ccr != null)
      {
        this.ccr.stop();
        this.ccr.release();
        this.ccr = null;
      }
      return true;
    }
    k localk = new k();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SimpleMediaRecorder", "Stop now  state:" + this.ccv);
    if (this.ccv != aa.ccQ)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SimpleMediaRecorder", "stop() called on illegal state");
      this.ccv = aa.ccR;
      return true;
    }
    synchronized (ccq)
    {
      if (this.cct != null)
      {
        this.cct.pq();
        this.cct.a(null);
      }
      long l1 = localk.qh();
      this.ccv = aa.ccS;
      long l2 = localk.qh();
      this.ccm.pz();
      long l3 = cj.N(this.cco);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SimpleMediaRecorder", "toNow " + l3 + " sStartTS " + this.cco + " bufferLen " + ccp);
      if ((l3 > 2000L) && (ccp == 0L))
      {
        n.pK().set(102401, Integer.valueOf(1));
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SimpleMediaRecorder", "16k not suppourt");
      }
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SimpleMediaRecorder", "Wait Stop Time Media:" + l1 + " Read:" + l2 + " Thr:" + localk.qh());
      return false;
    }
  }

  public final void release()
  {
    if (this.ccu == c.cbg)
    {
      if (this.ccr == null)
        return;
      this.ccr.release();
      return;
    }
    if (this.ccv == aa.ccQ)
      pv();
    while (true)
      synchronized (ccq)
      {
        if (this.cct != null)
        {
          this.cct.pq();
          this.cct = null;
        }
        return;
      }
  }

  public final void setOutputFile(String paramString)
  {
    if (this.ccu == c.cbg)
    {
      if (this.ccr == null)
        return;
      this.ccr.setOutputFile(paramString);
      this.ccl = paramString;
      return;
    }
    if (this.ccv == aa.ccO)
    {
      this.ccl = paramString;
      return;
    }
    this.ccv = aa.ccR;
  }

  public final void start()
  {
    if (this.ccu == c.cbg)
    {
      if (this.ccr == null)
        return;
      this.ccr.start();
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SimpleMediaRecorder", "Start now  state:" + this.ccv);
    if (this.ccv == aa.ccP)
    {
      this.cco = System.currentTimeMillis();
      ccp = 0L;
      this.ccv = aa.ccQ;
      synchronized (ccq)
      {
        if (this.ccm == null)
        {
          this.ccm = new v();
          v.a(this.ccm, this.ccs, this.ccl);
        }
        this.cct.pp();
        return;
      }
    }
    n.pK().set(102401, Integer.valueOf(1));
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SimpleMediaRecorder", "start() called on illegal state");
    this.ccv = aa.ccR;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.SimpleMediaRecorder
 * JD-Core Version:    0.6.2
 */