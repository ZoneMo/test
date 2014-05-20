package com.tencent.mm.ui.video;

import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.tencent.mm.sdk.platformtools.aa;

final class y
  implements SurfaceHolder.Callback
{
  y(VideoRecorderUI paramVideoRecorderUI)
  {
  }

  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    aa.d("MicroMsg.VideoRecorderUI", "surfaceChanged for:" + paramInt1 + " w:" + paramInt2 + " h:" + paramInt3);
    if (VideoRecorderUI.h(this.htr).d(paramSurfaceHolder) != 0)
      VideoRecorderUI.s(this.htr);
    VideoRecorderUI.a(this.htr, false);
    VideoRecorderUI.b(this.htr, false);
    VideoRecorderUI.aPi();
  }

  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    aa.d("MicroMsg.VideoRecorderUI", "surfaceCreated");
    if (VideoRecorderUI.h(this.htr).a(this.htr, VideoRecorderUI.q(this.htr)) != 0)
      VideoRecorderUI.s(this.htr);
  }

  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    aa.d("MicroMsg.VideoRecorderUI", "surfaceDestroyed");
    VideoRecorderUI.b(this.htr, true);
    VideoRecorderUI.h(this.htr).aPe();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.y
 * JD-Core Version:    0.6.2
 */