package com.tencent.mm.ui.video;

import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.ai.p;
import com.tencent.mm.ai.q;
import com.tencent.mm.ai.r;
import com.tencent.mm.ai.t;
import com.tencent.mm.ai.v;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

public class VideoDownloadUI extends MMActivity
  implements t
{
  private TextView dTl;
  private ProgressBar deh;
  private TextView hsI;
  private TextView hsJ;
  private String rD;

  protected final void FR()
  {
    this.hsI = ((TextView)findViewById(2131364054));
    this.hsJ = ((TextView)findViewById(2131364055));
    this.dTl = ((TextView)findViewById(2131364053));
    q localq = com.tencent.mm.ai.m.DE().gW(this.rD);
    TextView localTextView = this.dTl;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(v.e(localq));
    localTextView.setText(getString(2131165309, arrayOfObject));
    this.hsJ.setText(au.eQ(localq.DO()));
    this.hsI.setText(au.K(localq.vR()));
    a(new e(this));
    this.deh = ((ProgressBar)findViewById(2131364052));
    this.deh.setProgress(v.e(localq));
  }

  public final void ei(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")));
    q localq;
    boolean bool;
    do
    {
      int i;
      do
      {
        do
          return;
        while (!paramString.equals(this.rD));
        localq = com.tencent.mm.ai.m.DE().gW(paramString);
        i = v.e(localq);
        this.deh.setProgress(i);
        TextView localTextView = this.dTl;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i);
        localTextView.setText(getString(2131165309, arrayOfObject));
      }
      while ((i < this.deh.getMax()) || (localq.getStatus() != 199));
      bool = p.gQ(com.tencent.mm.ai.m.DE().gZ(paramString));
      if ((localq.DQ() != 0) || (bool))
        break;
    }
    while ((s.ceN.cen == 1) && (VideoPlayerUI.b(paramString, this, bool)));
    localIntent = new Intent();
    localIntent.putExtra("VideoRecorder_VideoSize", localq.vR());
    localIntent.putExtra("VideoRecorder_VideoLength", localq.DO());
    localIntent.putExtra("VideoPlayer_File_nam", paramString);
    a(VideoPlayerUI.class, localIntent);
    while (VideoPlayerUI.b(paramString, this, bool))
    {
      Intent localIntent;
      finish();
      return;
    }
    h.a(this, 2131166715, 2131167675, new f(this));
  }

  protected final int getLayoutId()
  {
    return 2130903810;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.rD = getIntent().getStringExtra("file_name");
    FR();
  }

  protected void onPause()
  {
    com.tencent.mm.ai.m.DE().a(this);
    super.onPause();
  }

  protected void onResume()
  {
    com.tencent.mm.ai.m.DE().a(this, Looper.getMainLooper());
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.VideoDownloadUI
 * JD-Core Version:    0.6.2
 */