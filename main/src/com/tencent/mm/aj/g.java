package com.tencent.mm.aj;

import android.media.AudioRecord;
import android.os.Handler;
import android.os.Process;
import com.tencent.mm.compatible.audio.o;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.modelvoice.i;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.qqpinyin.voicerecoapi.c;
import com.tencent.qqpinyin.voicerecoapi.d;
import java.io.File;
import java.io.FileOutputStream;

final class g
  implements Runnable
{
  i cBx = null;
  AudioRecord cCX = null;
  c cDF = null;
  int cDG = 0;
  boolean cDH = false;
  com.tencent.qqpinyin.voicerecoapi.a cys = null;
  FileOutputStream cyt = null;
  Handler handler = new h(this);

  g(f paramf)
  {
  }

  private void reset()
  {
    if ((this.cCX != null) && (1 == this.cCX.getState()))
    {
      this.cCX.stop();
      this.cCX.release();
      Object[] arrayOfObject = new Object[1];
      int i = o.count;
      o.count = i + 1;
      arrayOfObject[0] = Integer.valueOf(i);
      aa.d("MicroMsg.SceneVoiceAddr", "recordrInstance.release() [%d]", arrayOfObject);
    }
    this.cCX = null;
    if (this.cDF != null)
      this.cDF.stop();
    this.cDF = null;
    if (this.cys != null)
    {
      this.cys.aPL();
      this.cys = null;
    }
    if (this.cBx != null)
    {
      i.release();
      this.cBx = null;
    }
    if (this.cyt != null);
    try
    {
      this.cyt.close();
      label147: this.cyt = null;
      if (f.e(this.cDI) != null)
        f.e(this.cDI).EE();
      this.cDG = 0;
      this.cDH = false;
      return;
    }
    catch (Exception localException)
    {
      break label147;
    }
  }

  public final void run()
  {
    aa.d("MicroMsg.SceneVoiceAddr", "start RecordingRunnable! file:" + f.d(this.cDI));
    f.a(this.cDI, 0);
    f.b(this.cDI, 0);
    Process.setThreadPriority(-19);
    int i = 16000;
    if (f.c(this.cDI))
      i = 8000;
    while (true)
    {
      int j;
      try
      {
        if ((!f.c(this.cDI)) && (s.ceN.cec > 0))
        {
          f.c(this.cDI, s.ceN.cec);
          j = AudioRecord.getMinBufferSize(i, 1, 2);
          Object[] arrayOfObject1 = new Object[3];
          arrayOfObject1[0] = Integer.valueOf(i);
          arrayOfObject1[1] = Integer.valueOf(1);
          arrayOfObject1[2] = Integer.valueOf(2);
          aa.e("MicroMsg.SceneVoiceAddr", "AudioRecord.getMinBufferSize(%s, %s, %s)", arrayOfObject1);
          if (j < 0)
          {
            f.b(this.cDI, 10);
            if (this.cCX.getState() != 1)
              f.b(this.cDI, 11);
            this.cDF = new c(f.g(this.cDI));
            int k = this.cDF.aPO();
            if (k == 0)
              break;
            f.b(this.cDI, 13);
            aa.e("MicroMsg.SceneVoiceAddr", "init VoiceDetectAPI failed :" + k);
            reset();
          }
        }
        else
        {
          f.c(this.cDI, 5);
          continue;
        }
      }
      catch (Exception localException1)
      {
        f.b(this.cDI, 12);
        aa.e("MicroMsg.SceneVoiceAddr", "init record failed");
        reset();
        return;
      }
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(o.count);
      aa.d("MicroMsg.SceneVoiceAddr", "new AudioRecord [%d]", arrayOfObject2);
      this.cCX = new AudioRecord(1, i, 1, 2, j * f.f(this.cDI));
      Object[] arrayOfObject3 = new Object[5];
      arrayOfObject3[0] = Integer.valueOf(1);
      arrayOfObject3[1] = Integer.valueOf(i);
      arrayOfObject3[2] = Integer.valueOf(1);
      arrayOfObject3[3] = Integer.valueOf(2);
      arrayOfObject3[4] = Integer.valueOf(j * f.f(this.cDI));
      aa.e("MicroMsg.SceneVoiceAddr", "new AudioRecord(%s, %s, %s, %s, %s)", arrayOfObject3);
    }
    if (!f.c(this.cDI))
    {
      this.cys = new com.tencent.qqpinyin.voicerecoapi.a();
      int i2 = this.cys.aPK();
      if (i2 != 0)
      {
        f.b(this.cDI, 14);
        aa.e("MicroMsg.SceneVoiceAddr", "speexInit failed :" + i2);
        reset();
      }
    }
    else
    {
      this.cBx = new i();
      this.cBx.eB(1);
    }
    short[] arrayOfShort;
    d locald;
    int m;
    try
    {
      File localFile = new File(f.d(this.cDI));
      localFile.delete();
      this.cyt = new FileOutputStream(localFile);
      if (f.c(this.cDI))
      {
        this.cyt.write("#!AMR\n".getBytes());
        this.cyt.flush();
      }
      try
      {
        this.cCX.startRecording();
        arrayOfShort = new short[2 * (1 * (i * 120) / 1000) / 2];
        locald = new d();
        if (f.h(this.cDI) == 0)
        {
          m = this.cCX.read(arrayOfShort, 0, arrayOfShort.length);
          if (m != -3)
            break label753;
          throw new IllegalStateException("read() returned AudioRecord.ERROR_INVALID_OPERATION");
        }
      }
      catch (Exception localException3)
      {
        f.a(this.cDI, 1);
        aa.d("MicroMsg.SceneVoiceAddr", "Reocording stop running flag:" + f.h(this.cDI));
        if (f.e(this.cDI) != null)
          f.e(this.cDI).EE();
        this.handler.sendEmptyMessage(2);
        if (!this.cDH)
          this.handler.sendEmptyMessage(3);
        reset();
        return;
      }
    }
    catch (Exception localException2)
    {
      f.b(this.cDI, 15);
      aa.e("MicroMsg.SceneVoiceAddr", "filename open failed");
      reset();
      return;
    }
    label753: if (m == -2)
      throw new IllegalStateException("read() returned AudioRecord.ERROR_BAD_VALUE");
    this.cDF.a(arrayOfShort, m, locald);
    if ((locald.hwj == 2) || (locald.hwj == 3))
      f.a(this.cDI, 4);
    f.a(this.cDI, arrayOfShort, m);
    byte[] arrayOfByte1 = new byte[m * 2];
    int n = 0;
    int i1 = 0;
    while (i1 < m)
    {
      arrayOfByte1[n] = ((byte)(0xFF & arrayOfShort[i1]));
      arrayOfByte1[(n + 1)] = ((byte)(0xFF & arrayOfShort[i1] >> 8));
      i1++;
      n += 2;
    }
    if (!f.c(this.cDI))
    {
      arrayOfByte2 = this.cys.m(arrayOfByte1, arrayOfByte1.length);
      StringBuilder localStringBuilder2 = new StringBuilder("speex mode | pcmlen(short):").append(m).append(" pcmBufferInBytes:").append(arrayOfByte1.length).append(" outSpeexBuf:");
      if (arrayOfByte2 == null);
      for (Object localObject2 = "null"; ; localObject2 = Integer.valueOf(arrayOfByte2.length))
      {
        aa.d("MicroMsg.SceneVoiceAddr", localObject2);
        label971: if ((arrayOfByte2 == null) || (arrayOfByte2.length <= 0))
          break label1156;
        this.cyt.write(arrayOfByte2);
        this.cyt.flush();
        this.cDG += arrayOfByte2.length;
        if ((this.cDG <= 3300) || (this.cDH))
          break;
        aa.d("MicroMsg.SceneVoiceAddr", "sendEmptyMessage(0)");
        this.handler.sendEmptyMessage(0);
        this.cDH = true;
        break;
      }
    }
    PByteArray localPByteArray = new PByteArray();
    this.cBx.a(arrayOfByte1, arrayOfByte1.length, localPByteArray, 0);
    byte[] arrayOfByte2 = localPByteArray.value;
    StringBuilder localStringBuilder1 = new StringBuilder("amr mode | pcmlen(short):").append(m).append(" pcmBufferInBytes:").append(arrayOfByte1.length).append(" outAmrBuf:");
    if (arrayOfByte2 == null);
    label1156: Integer localInteger;
    for (Object localObject1 = "null"; ; localObject1 = localInteger)
    {
      aa.d("MicroMsg.SceneVoiceAddr", localObject1);
      break label971;
      break;
      localInteger = Integer.valueOf(arrayOfByte2.length);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.aj.g
 * JD-Core Version:    0.6.2
 */