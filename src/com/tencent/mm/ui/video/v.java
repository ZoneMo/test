package com.tencent.mm.ui.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class v
  implements MediaPlayer.OnCompletionListener
{
  v(VideoRecorderPreviewUI paramVideoRecorderPreviewUI)
  {
  }

  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    this.hsU.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.v
 * JD-Core Version:    0.6.2
 */