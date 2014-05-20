package com.tencent.mm.ui.video;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class z
  implements DialogInterface.OnClickListener
{
  z(VideoRecorderUI paramVideoRecorderUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    VideoRecorderUI.h(this.htr).aPe();
    this.htr.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.z
 * JD-Core Version:    0.6.2
 */