package com.tencent.mm.compatible.audio;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.platformtools.cj;

final class u
  implements r
{
  u(SimpleMediaRecorder paramSimpleMediaRecorder)
  {
  }

  private static byte[] f(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt % 2 != 0)
      paramInt--;
    if (paramInt <= 0)
      return null;
    byte[] arrayOfByte = new byte[paramInt / 2];
    for (int i = 0; i < paramInt / 2; i += 2)
    {
      arrayOfByte[i] = paramArrayOfByte[(i * 2)];
      arrayOfByte[(i + 1)] = paramArrayOfByte[(1 + i * 2)];
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
      if (m > SimpleMediaRecorder.l(this.ccA))
        SimpleMediaRecorder.b(this.ccA, m);
    }
  }

  public final void e(byte[] paramArrayOfByte, int paramInt)
  {
    if (SimpleMediaRecorder.c(this.ccA) == aa.ccS)
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.SimpleMediaRecorder", "recorder has been stopped");
      return;
    }
    long l = cj.N(SimpleMediaRecorder.d(this.ccA));
    if ((SimpleMediaRecorder.e(this.ccA) > 0L) && (l > SimpleMediaRecorder.e(this.ccA)))
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.SimpleMediaRecorder", "Stop now ! expire duration ms:" + l);
      this.ccA.pv();
      SimpleMediaRecorder.a(this.ccA).pB();
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SimpleMediaRecorder", "read :" + paramInt + " time: " + SimpleMediaRecorder.f(this.ccA).qh() + " inPer:" + SimpleMediaRecorder.g(this.ccA));
    if (paramInt < 0)
    {
      if (SimpleMediaRecorder.c(this.ccA) == aa.ccS)
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.SimpleMediaRecorder", "recorder has been stopped");
        return;
      }
      this.ccA.pv();
      SimpleMediaRecorder.a(this.ccA).pB();
      return;
    }
    SimpleMediaRecorder.a(this.ccA, paramInt);
    if (SimpleMediaRecorder.h(this.ccA) == 16000)
    {
      paramArrayOfByte = f(paramArrayOfByte, paramInt);
      paramInt = paramArrayOfByte.length;
    }
    g(paramArrayOfByte, paramInt);
    if (SimpleMediaRecorder.i(this.ccA) == null)
    {
      SimpleMediaRecorder.a(this.ccA, new v());
      v.a(SimpleMediaRecorder.i(this.ccA), SimpleMediaRecorder.j(this.ccA), SimpleMediaRecorder.k(this.ccA));
    }
    SimpleMediaRecorder.i(this.ccA).h(paramArrayOfByte, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.u
 * JD-Core Version:    0.6.2
 */