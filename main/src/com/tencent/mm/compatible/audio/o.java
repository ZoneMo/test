package com.tencent.mm.compatible.audio;

import android.media.AudioRecord;
import android.media.AudioRecord.OnRecordPositionUpdateListener;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Timer;

public final class o
{
  public static int cbv = 2;
  public static int count = 0;
  private int cbA = 120;
  private int cbB = 0;
  private int cbC = 0;
  private long cbD = 0L;
  private boolean cbE = false;
  private r cbF;
  private boolean cbG = true;
  private s cbH = null;
  private HandlerThread cbI = null;
  private boolean cbJ = false;
  private boolean cbK = false;
  private final byte[] cbL = new byte[0];
  private int cbM = 10;
  private k cbN = null;
  private int cbO = -1;
  private int cbP = 1;
  private Timer cbQ = null;
  private boolean cbR = false;
  private long cbS = 0L;
  private long cbT = 0L;
  private int cbU = 0;
  private a cbV = null;
  private long cbW = 0L;
  private long cbX = 0L;
  private int cbY = 60;
  private long cbZ = 20L;
  private int cbw = 1;
  private AudioRecord cbx = null;
  private byte[] cby = null;
  private int cbz = 8000;
  private int cca = 12800;
  private final Object ccb = new Object();
  private AudioRecord.OnRecordPositionUpdateListener ccc = new p(this);

  public o()
  {
  }

  public o(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    aa.d("MicroMsg.MMPcmRecorder", "channel 1sample " + paramInt1);
    this.cbw = 1;
    this.cbz = paramInt1;
    this.cbA = paramInt2;
    this.cbE = paramBoolean;
    this.cbO = paramInt3;
    if (this.cbw == 2);
    for (cbv = 3; ; cbv = 2)
    {
      if ((this.cbO == 0) && (com.tencent.mm.compatible.c.s.ceN.cdZ > 0))
        this.cbA = com.tencent.mm.compatible.c.s.ceN.cdZ;
      if (com.tencent.mm.compatible.c.s.ceN.cek > 0)
        cbv = com.tencent.mm.compatible.c.s.ceN.cek;
      aa.d("MicroMsg.MMPcmRecorder", "frameTime " + this.cbA);
      return;
    }
  }

  public final void a(r paramr)
  {
    this.cbF = paramr;
  }

  public final int getState()
  {
    return this.cbP;
  }

  public final boolean pause()
  {
    this.cbK = true;
    return true;
  }

  public final boolean po()
  {
    this.cbK = false;
    synchronized (this.cbL)
    {
      this.cbL.notify();
      return true;
    }
  }

  public final boolean pp()
  {
    aa.d("MicroMsg.SceneVoice.Recorder", Thread.currentThread().getStackTrace()[2].getMethodName());
    if (this.cbx != null)
    {
      aa.d("MicroMsg.MMPcmRecorder", "start error ,is recording ");
      return false;
    }
    aa.d("MicroMsg.SceneVoice.Recorder", Thread.currentThread().getStackTrace()[2].getMethodName());
    this.cbJ = false;
    this.cbK = false;
    this.cbP = 1;
    boolean bool;
    label125: int i;
    int j;
    if (com.tencent.mm.compatible.c.s.ceN.cdV == 2)
    {
      bool = false;
      this.cbG = bool;
      if (com.tencent.mm.compatible.c.s.ceN.cdU <= 0)
        break label194;
      this.cbM = com.tencent.mm.compatible.c.s.ceN.cdU;
      i = AudioRecord.getMinBufferSize(this.cbz, cbv, 2);
      if ((i != -2) && (i != -1))
        break label227;
      aa.e("MicroMsg.MMPcmRecorder", "getMinBufferSize error " + i);
      this.cbP = 3;
      j = 0;
    }
    while (true)
    {
      if (j != 0)
        break label871;
      aa.d("MicroMsg.MMPcmRecorder", "init error");
      return false;
      bool = true;
      break;
      label194: if ((this.cbO == 1) || (this.cbO == 2))
      {
        this.cbM = 1;
        break label125;
      }
      this.cbM = 10;
      break label125;
      label227: this.cbC = (this.cbz * this.cbA * this.cbw / 1000);
      this.cbB = (2 * this.cbC);
      aa.d("MicroMsg.MMPcmRecorder", "minBufSize " + i + " framePeriod " + this.cbC + " frameSize " + this.cbB + "   ,bufferRate" + this.cbM);
      if ((this.cbO == 1) && (com.tencent.mm.compatible.c.s.ceL.cdm > 0));
      for (this.cbx = new AudioRecord(7, this.cbz, cbv, 2, i * this.cbM); ; this.cbx = new AudioRecord(1, this.cbz, cbv, 2, i * this.cbM))
      {
        if (this.cbx.getState() != 0)
          break label469;
        aa.e("MicroMsg.MMPcmRecorder", "STATE_UNINITIALIZED");
        Object[] arrayOfObject = new Object[1];
        int n = count;
        count = n + 1;
        arrayOfObject[0] = Integer.valueOf(n);
        aa.d("MicroMsg.MMPcmRecorder", "audioRecord.release() [%d]", arrayOfObject);
        this.cbx.release();
        this.cbx = null;
        this.cbP = 2;
        j = 0;
        break;
      }
      label469: this.cby = new byte[this.cbB];
      if (this.cbG)
        this.cbH = new s(this);
      while (true)
      {
        this.cbD = System.currentTimeMillis();
        this.cbN = new k();
        this.cbN.a(this.cbx);
        if (this.cbO != 1)
          break label866;
        this.cbV = new a();
        if (this.cbV != null)
          break label634;
        aa.e("MicroMsg.MMPcmRecorder", "new m_audioBuffer error ");
        j = 0;
        break;
        this.cbI = new HandlerThread("MMPcmRecorder", 10);
        this.cbI.start();
        Handler localHandler = new Handler(this.cbI.getLooper());
        this.cbx.setRecordPositionUpdateListener(this.ccc, localHandler);
        this.cbx.setPositionNotificationPeriod(this.cbC);
      }
      label634: this.cca = (20 * this.cbB);
      aa.d("MicroMsg.MMPcmRecorder", "audioBuffer init m_timerBufLen: " + this.cca);
      this.cbU = this.cbV.bw(this.cca);
      if (this.cbU != 0)
      {
        aa.d("MicroMsg.MMPcmRecorder", "audioBuffer init failed, error code = " + this.cbU);
        j = 0;
      }
      else
      {
        int m;
        if ((!this.cbR) && (this.cbQ == null))
        {
          this.cbQ = new Timer();
          if (this.cbQ == null)
            m = -1;
        }
        while (true)
        {
          this.cbU = m;
          if (this.cbU == 0)
            break label866;
          aa.d("MicroMsg.MMPcmRecorder", "InitAudioRecTimer failed, error code = " + this.cbU);
          j = 0;
          break;
          this.cbQ.scheduleAtFixedRate(new q(this), this.cbY, this.cbZ);
          this.cbR = true;
          m = 0;
          continue;
          aa.d("MicroMsg.MMPcmRecorder", " Timer has been created or timer has been started:" + this.cbR);
          m = -1;
        }
        label866: j = 1;
      }
    }
    label871: if (this.cbx.getState() == 0)
    {
      aa.d("MicroMsg.MMPcmRecorder", "state error");
      this.cbP = 2;
      return false;
    }
    long l = System.currentTimeMillis();
    this.cbx.startRecording();
    this.cbJ = true;
    aa.d("MicroMsg.MMPcmRecorder", "startRecording time " + (System.currentTimeMillis() - l));
    if (this.cbG)
      this.cbH.start();
    while (true)
    {
      return true;
      int k = this.cbx.read(this.cby, 0, this.cbB);
      aa.d("MicroMsg.MMPcmRecorder", "in Start Read:" + k);
      if ((this.cbF != null) && (k > 0))
        this.cbF.e(this.cby, k);
    }
  }

  public final boolean pq()
  {
    aa.d("MicroMsg.MMPcmRecorder", "stopRecord() threadId = " + Thread.currentThread());
    aa.i("MicroMsg.SceneVoice.Recorder", Thread.currentThread().getStackTrace()[2].getMethodName());
    if (this.cbx == null)
    {
      aa.e("MicroMsg.MMPcmRecorder", "audioRecord is null");
      return false;
    }
    if (this.cbx.getState() != 1)
    {
      aa.e("MicroMsg.MMPcmRecorder", "audioRecord sate error " + this.cbx.getState());
      return false;
    }
    long l = System.currentTimeMillis();
    aa.i("MicroMsg.MMPcmRecorder", "audioRecord app.disableProcess() cost " + (System.currentTimeMillis() - l) + " ms");
    this.cbJ = false;
    this.cbx.stop();
    this.cbx.setRecordPositionUpdateListener(null);
    if (this.cbO == 1)
    {
      if (this.cbQ != null)
      {
        this.cbQ.cancel();
        this.cbQ = null;
      }
      this.cbR = false;
      this.cbV.oW();
    }
    synchronized (this.ccb)
    {
      if (this.cbO == 1)
        this.cbV = null;
      this.cbF = null;
      Object[] arrayOfObject = new Object[1];
      int i = count;
      count = i + 1;
      arrayOfObject[0] = Integer.valueOf(i);
      aa.d("MicroMsg.MMPcmRecorder", "audioRecord.release() [%d]", arrayOfObject);
      this.cbx.release();
      this.cbx = null;
      this.cby = null;
      if ((!this.cbG) || (this.cbH == null));
    }
    synchronized (this.cbL)
    {
      this.cbL.notify();
      this.cbH = null;
      return true;
      localObject2 = finally;
      throw localObject2;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.o
 * JD-Core Version:    0.6.2
 */