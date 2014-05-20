package com.tencent.mm.ui.base;

import android.media.MediaPlayer;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.widget.MediaController;

final class eq
  implements SurfaceHolder.Callback
{
  eq(VideoView paramVideoView)
  {
  }

  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    VideoView.d(this.gFu, paramInt2);
    VideoView.e(this.gFu, paramInt3);
    if ((VideoView.e(this.gFu) != null) && (VideoView.o(this.gFu)) && (VideoView.a(this.gFu) == paramInt2) && (VideoView.b(this.gFu) == paramInt3))
    {
      if (VideoView.k(this.gFu) != 0)
      {
        VideoView.e(this.gFu).seekTo(VideoView.k(this.gFu));
        VideoView.l(this.gFu);
      }
      VideoView.e(this.gFu).start();
      if (VideoView.f(this.gFu) != null)
        VideoView.f(this.gFu).show();
    }
  }

  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    VideoView.a(this.gFu, paramSurfaceHolder);
    VideoView.p(this.gFu);
  }

  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    VideoView.a(this.gFu, null);
    if (VideoView.f(this.gFu) != null)
      VideoView.f(this.gFu).hide();
    if (VideoView.e(this.gFu) != null)
    {
      VideoView.e(this.gFu).reset();
      VideoView.e(this.gFu).release();
      VideoView.q(this.gFu);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.eq
 * JD-Core Version:    0.6.2
 */