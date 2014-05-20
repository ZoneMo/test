package com.tencent.mm.ui.video;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class aa
  implements MenuItem.OnMenuItemClickListener
{
  aa(VideoRecorderUI paramVideoRecorderUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("VideoRecorder_FileName", VideoRecorderUI.h(this.htr).getFileName());
    localIntent.putExtra("VideoRecorder_VideoLength", VideoRecorderUI.h(this.htr).DO());
    localIntent.putExtra("VideoRecorder_ToUser", VideoRecorderUI.i(this.htr));
    this.htr.setResult(-1, localIntent);
    this.htr.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.aa
 * JD-Core Version:    0.6.2
 */