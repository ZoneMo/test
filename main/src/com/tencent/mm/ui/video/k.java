package com.tencent.mm.ui.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.widget.ImageButton;
import com.tencent.mm.sdk.platformtools.ay;

final class k
  implements MediaPlayer.OnCompletionListener
{
  k(VideoPlayerUI paramVideoPlayerUI)
  {
  }

  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    VideoPlayerUI.b(this.hsO).setVisibility(0);
    VideoPlayerUI.i(this.hsO).azn();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.k
 * JD-Core Version:    0.6.2
 */