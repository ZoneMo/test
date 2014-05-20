package com.tencent.mm.ui.video;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ai
  implements DialogInterface.OnClickListener
{
  ai(VideoRecorderUI paramVideoRecorderUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.htr.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.ai
 * JD-Core Version:    0.6.2
 */