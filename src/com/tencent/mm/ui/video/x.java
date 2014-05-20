package com.tencent.mm.ui.video;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.SurfaceView;
import android.widget.LinearLayout;
import com.tencent.mm.sdk.platformtools.aa;

final class x
  implements DialogInterface.OnCancelListener
{
  x(VideoRecorderUI paramVideoRecorderUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    aa.d("MicroMsg.VideoRecorderUI", "tipDialog onCancel");
    if (VideoRecorderUI.h(this.htr) != null)
    {
      VideoRecorderUI.u(this.htr);
      VideoRecorderUI.v(this.htr).setVisibility(0);
      VideoRecorderUI.w(this.htr).setVisibility(0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.x
 * JD-Core Version:    0.6.2
 */