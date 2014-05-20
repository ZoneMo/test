package com.tencent.mm.modelvoice;

import android.media.AudioRecord;
import android.os.Process;
import com.tencent.mm.compatible.audio.o;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.qqpinyin.voicerecoapi.a;
import java.io.File;
import java.io.FileOutputStream;

final class ba
  implements Runnable
{
  ba(az paramaz)
  {
  }

  public final void run()
  {
    Process.setThreadPriority(-19);
    int i;
    try
    {
      i = AudioRecord.getMinBufferSize(16000, 1, 2);
      if (i >= 0)
      {
        if (s.ceN.cec <= 0)
          break label169;
        az.a(this.cCZ, s.ceN.cec);
      }
      while (true)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(o.count);
        aa.d("MicroMsg.SpeexRecorder", "new AudioRecord [%d]", arrayOfObject);
        az.a(this.cCZ, new AudioRecord(1, 16000, 1, 2, i * az.a(this.cCZ)));
        az.b(this.cCZ).getState();
        az.a(this.cCZ, new a());
        int j = az.d(this.cCZ).aPK();
        if (j == 0)
          break;
        aa.e("MicroMsg.SpeexRecorder", "speexInit failed :" + j);
        az.c(this.cCZ);
        return;
        label169: az.a(this.cCZ, 5);
      }
    }
    catch (Exception localException1)
    {
      aa.e("MicroMsg.SpeexRecorder", "init record failed");
      az.c(this.cCZ);
      return;
    }
    while (true)
    {
      short[] arrayOfShort;
      int k;
      try
      {
        File localFile = new File(az.e(this.cCZ));
        localFile.delete();
        az.a(this.cCZ, new FileOutputStream(localFile));
        try
        {
          az.b(this.cCZ).startRecording();
          arrayOfShort = new short[i];
          if (az.f(this.cCZ) != 1)
            break;
          k = az.b(this.cCZ).read(arrayOfShort, 0, i);
          if (k == -3)
            throw new IllegalStateException("read() returned AudioRecord.ERROR_INVALID_OPERATION");
        }
        catch (Exception localException3)
        {
          return;
        }
      }
      catch (Exception localException2)
      {
        aa.e("MicroMsg.SpeexRecorder", "filename open failed");
        az.c(this.cCZ);
        return;
      }
      if (k == -2)
        throw new IllegalStateException("read() returned AudioRecord.ERROR_BAD_VALUE");
      az.a(this.cCZ, arrayOfShort, k);
      byte[] arrayOfByte1 = new byte[k * 2];
      int m = 0;
      int n = 0;
      while (n < k)
      {
        arrayOfByte1[m] = ((byte)(0xFF & arrayOfShort[n]));
        arrayOfByte1[(m + 1)] = ((byte)(0xFF & arrayOfShort[n] >> 8));
        n++;
        m += 2;
      }
      if (arrayOfByte1.length > 0)
      {
        byte[] arrayOfByte2 = az.d(this.cCZ).m(arrayOfByte1, arrayOfByte1.length);
        StringBuilder localStringBuilder = new StringBuilder(" pcmlen(short):").append(k).append(" inSpeexBuffer:").append(Integer.valueOf(arrayOfByte1.length)).append(" outSpeexBuf:");
        if (arrayOfByte2 == null);
        Integer localInteger;
        for (Object localObject = "null"; ; localObject = localInteger)
        {
          aa.d("MicroMsg.SpeexRecorder", localObject);
          if ((arrayOfByte2 == null) || (arrayOfByte2.length <= 0))
            break;
          az.g(this.cCZ).write(arrayOfByte2);
          az.g(this.cCZ).flush();
          az localaz = this.cCZ;
          localaz.cCY += arrayOfByte2.length;
          break;
          localInteger = Integer.valueOf(arrayOfByte2.length);
        }
      }
    }
    try
    {
      az.c(this.cCZ);
      return;
    }
    catch (Exception localException4)
    {
      aa.e("MicroMsg.SpeexRecorder", "StopRecord ErrMsg[" + localException4.getMessage() + "]");
      az.h(this.cCZ);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.ba
 * JD-Core Version:    0.6.2
 */