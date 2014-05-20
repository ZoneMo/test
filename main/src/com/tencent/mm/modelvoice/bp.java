package com.tencent.mm.modelvoice;

import com.tencent.mm.sdk.platformtools.aa;

final class bp
  implements n
{
  bp(bo parambo)
  {
  }

  public final void pB()
  {
    if (bo.a(this.cDl) != null)
      bo.a(this.cDl).pB();
    try
    {
      bo.b(this.cDl).release();
      bo.c(this.cDl);
      return;
    }
    catch (Exception localException)
    {
      aa.e("VoiceRecorder", "setErrorListener File[" + this.cDl.getFileName() + "] ErrMsg[" + localException.getStackTrace() + "]");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.bp
 * JD-Core Version:    0.6.2
 */