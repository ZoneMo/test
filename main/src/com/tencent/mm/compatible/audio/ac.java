package com.tencent.mm.compatible.audio;

import com.tencent.mm.sdk.platformtools.aa;

final class ac
  implements z
{
  ac(ab paramab)
  {
  }

  public final void pB()
  {
    if (ab.a(this.ccX) != null)
      ab.a(this.ccX).pB();
    try
    {
      ab.b(this.ccX).release();
      ab.c(this.ccX);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.SimpleVoiceRecorder", "setErrorListener File[" + this.ccX.getFileName() + "] ErrMsg[" + localException.getStackTrace() + "]");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.ac
 * JD-Core Version:    0.6.2
 */