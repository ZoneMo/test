package com.tencent.mm.compatible.audio;

import android.media.MediaRecorder;
import android.media.MediaRecorder.OnErrorListener;
import com.tencent.mm.sdk.platformtools.aa;

final class t
  implements MediaRecorder.OnErrorListener
{
  t(SimpleMediaRecorder paramSimpleMediaRecorder)
  {
  }

  public final void onError(MediaRecorder paramMediaRecorder, int paramInt1, int paramInt2)
  {
    if (SimpleMediaRecorder.a(this.ccA) != null)
      SimpleMediaRecorder.a(this.ccA).pB();
    try
    {
      SimpleMediaRecorder.b(this.ccA).release();
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.SimpleMediaRecorder", localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.t
 * JD-Core Version:    0.6.2
 */