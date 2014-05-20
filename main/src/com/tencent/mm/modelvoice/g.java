package com.tencent.mm.modelvoice;

import android.media.MediaRecorder.OnErrorListener;
import com.tencent.mm.sdk.platformtools.aa;

final class g
  implements MediaRecorder.OnErrorListener
{
  g(MediaRecorder paramMediaRecorder)
  {
  }

  public final void onError(android.media.MediaRecorder paramMediaRecorder, int paramInt1, int paramInt2)
  {
    if (MediaRecorder.a(this.cBw) != null)
      MediaRecorder.a(this.cBw).pB();
    try
    {
      MediaRecorder.b(this.cBw).release();
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.MediaRecorder", localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.g
 * JD-Core Version:    0.6.2
 */