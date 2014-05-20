package com.tencent.mm.ui.video;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class ah
  implements View.OnClickListener
{
  ah(VideoRecorderUI paramVideoRecorderUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.htr, VideoRecorderPreviewUI.class);
    localIntent.putExtra("VideoRecorder_FileName", VideoRecorderUI.h(this.htr).getFileName());
    localIntent.putExtra("VideoRecorder_VideoLength", VideoRecorderUI.h(this.htr).DO());
    localIntent.putExtra("VideoRecorder_VideoSize", VideoRecorderUI.h(this.htr).getFileSize());
    localIntent.putExtra("VideoRecorder_ToUser", VideoRecorderUI.i(this.htr));
    localIntent.putExtra("VideoRecorder_VideoFullPath", VideoRecorderUI.t(this.htr));
    this.htr.startActivityForResult(localIntent, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.ah
 * JD-Core Version:    0.6.2
 */