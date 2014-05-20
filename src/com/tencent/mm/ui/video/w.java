package com.tencent.mm.ui.video;

import android.content.res.Resources;
import android.os.SystemClock;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class w
  implements az
{
  w(VideoRecorderUI paramVideoRecorderUI)
  {
  }

  public final boolean ok()
  {
    if (VideoRecorderUI.a(this.htr) == -1L)
      VideoRecorderUI.a(this.htr, SystemClock.elapsedRealtime());
    long l1 = VideoRecorderUI.a(this.htr);
    long l2 = SystemClock.elapsedRealtime() - l1;
    VideoRecorderUI.b(this.htr).setText(d.eQ((int)(l2 / 1000L)));
    if ((l2 <= 30000L) && (l2 >= 20000L))
    {
      long l3 = (30000L - l2) / 1000L;
      VideoRecorderUI.c(this.htr).setVisibility(0);
      TextView localTextView = VideoRecorderUI.c(this.htr);
      Resources localResources = this.htr.getResources();
      int i = l.bcF;
      int j = (int)l3;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(l3);
      localTextView.setText(localResources.getQuantityString(i, j, arrayOfObject));
    }
    while (l2 >= 30000L)
    {
      aa.v("MicroMsg.VideoRecorderUI", "record stop on countdown");
      VideoRecorderUI.d(this.htr);
      VideoRecorderUI.a(this.htr, -1L);
      return false;
      VideoRecorderUI.c(this.htr).setVisibility(8);
    }
    VideoRecorderUI.a(this.htr, VideoRecorderUI.e(this.htr) % 2);
    if (VideoRecorderUI.e(this.htr) == 0)
      VideoRecorderUI.f(this.htr).setVisibility(4);
    while (true)
    {
      VideoRecorderUI.g(this.htr);
      return true;
      VideoRecorderUI.f(this.htr).setVisibility(0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.w
 * JD-Core Version:    0.6.2
 */