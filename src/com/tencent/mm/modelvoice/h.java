package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.audio.r;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class h
  implements r
{
  h(MediaRecorder paramMediaRecorder)
  {
  }

  private static byte[] f(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt % 4;
    if (i != 0)
      paramInt -= i;
    if (paramInt <= 0)
      return null;
    byte[] arrayOfByte = new byte[paramInt / 2];
    for (int j = 0; j < paramInt / 2; j += 2)
    {
      arrayOfByte[j] = paramArrayOfByte[(j * 2)];
      arrayOfByte[(j + 1)] = paramArrayOfByte[(1 + j * 2)];
    }
    return arrayOfByte;
  }

  private void g(byte[] paramArrayOfByte, int paramInt)
  {
    for (int i = 0; i < paramInt / 2; i++)
    {
      int j = paramArrayOfByte[(i * 2)];
      int k = paramArrayOfByte[(1 + i * 2)];
      int m = (short)(j & 0xFF | k << 8);
      if (m > MediaRecorder.n(this.cBw))
        MediaRecorder.b(this.cBw, m);
    }
  }

  public final void e(byte[] paramArrayOfByte, int paramInt)
  {
    if (MediaRecorder.c(this.cBw) == o.cBF)
    {
      aa.w("MicroMsg.MediaRecorder", "recorder has been stopped");
      return;
    }
    long l = cj.N(MediaRecorder.d(this.cBw));
    if ((MediaRecorder.e(this.cBw) > 0L) && (l > MediaRecorder.e(this.cBw)))
    {
      aa.w("MicroMsg.MediaRecorder", "Stop now ! expire duration ms:" + l);
      this.cBw.pv();
      MediaRecorder.a(this.cBw).pB();
      return;
    }
    aa.d("MicroMsg.MediaRecorder", "read :" + paramInt + " time: " + MediaRecorder.f(this.cBw).qh() + " inPer:" + MediaRecorder.g(this.cBw));
    if (paramInt < 0)
    {
      if (MediaRecorder.c(this.cBw) == o.cBF)
      {
        aa.w("MicroMsg.MediaRecorder", "recorder has been stopped");
        return;
      }
      this.cBw.pv();
      MediaRecorder.a(this.cBw).pB();
      return;
    }
    MediaRecorder.a(this.cBw, paramInt);
    if ((MediaRecorder.h(this.cBw) == null) && (this.cBw.Ed()) && (MediaRecorder.i(this.cBw) != null) && (MediaRecorder.j(this.cBw) == 16000))
    {
      MediaRecorder.a(this.cBw, new com.tencent.mm.af.k());
      MediaRecorder.h(this.cBw).gv(cj.FD());
    }
    if (MediaRecorder.h(this.cBw) != null)
      MediaRecorder.h(this.cBw).v(paramArrayOfByte);
    if (MediaRecorder.j(this.cBw) == 16000)
    {
      paramArrayOfByte = f(paramArrayOfByte, paramInt);
      paramInt = paramArrayOfByte.length;
    }
    g(paramArrayOfByte, paramInt);
    if (MediaRecorder.k(this.cBw) == null)
    {
      MediaRecorder.a(this.cBw, new j());
      MediaRecorder.k(this.cBw).c(MediaRecorder.l(this.cBw), MediaRecorder.m(this.cBw));
    }
    MediaRecorder.k(this.cBw).h(paramArrayOfByte, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.h
 * JD-Core Version:    0.6.2
 */