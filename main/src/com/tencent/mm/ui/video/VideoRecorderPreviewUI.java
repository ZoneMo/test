package com.tencent.mm.ui.video;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ProgressBar;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.VideoView;

public class VideoRecorderPreviewUI extends MMActivity
{
  private ProgressBar cZV;
  private long dlh = -1L;
  private VideoView hsP;
  private String hsQ = null;
  private ay hsR = new ay(new p(this), true);
  private final int hsS = 3000;
  private Handler hsT = new r(this);

  protected final void FR()
  {
    this.hsP = ((VideoView)findViewById(i.aOB));
    this.hsP.setOnErrorListener(new s(this));
    this.hsP.setOnPreparedListener(new t(this));
    findViewById(i.aOA).setOnClickListener(new u(this));
    this.hsP.setOnCompletionListener(new v(this));
    if (this.hsQ != null)
    {
      this.hsP.stopPlayback();
      this.hsP.wm(this.hsQ);
    }
    this.cZV = ((ProgressBar)findViewById(i.aOx));
  }

  protected final int getLayoutId()
  {
    return k.bbi;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(k.bbi);
    this.hsQ = getIntent().getStringExtra("VideoRecorder_VideoFullPath");
    mn(n.bEr);
    a(new q(this));
    FR();
  }

  protected void onPause()
  {
    super.onPause();
    if (this.hsP.isPlaying())
      this.hsP.pause();
    this.hsR.azn();
    finish();
    this.hsT.removeMessages(0);
  }

  public void onStart()
  {
    super.onStart();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.VideoRecorderPreviewUI
 * JD-Core Version:    0.6.2
 */