package com.tencent.mm.ui.video;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.ImageButton;
import android.widget.TextView;
import com.tencent.mm.ai.r;
import com.tencent.mm.model.ah;
import com.tencent.mm.model.al;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.VideoView;

public class VideoPlayerUI extends MMActivity
{
  private long bMS;
  private String ccE;
  private ImageButton ekZ = null;
  private TextView hsI;
  private TextView hsJ;
  private VideoView hsL = null;
  private TextView hsM;
  private ay hsN = new ay(new o(this), true);
  private int length;
  private String rD;
  private int size;

  private void ajF()
  {
    this.hsL.pause();
    this.ekZ.setVisibility(0);
    this.hsN.azn();
  }

  public static boolean b(String paramString, Context paramContext, boolean paramBoolean)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW").addFlags(268435456);
    String str = com.tencent.mm.ai.m.DE().gZ(paramString);
    Uri localUri = Uri.parse("file://" + str);
    if (paramBoolean)
      localIntent.setDataAndType(localUri, "video/quicktime");
    while (!au.i(paramContext, localIntent))
    {
      return false;
      localIntent.setDataAndType(localUri, "video/*");
    }
    paramContext.startActivity(localIntent);
    return true;
  }

  protected final void FR()
  {
    mn(2131166723);
    this.bMS = getIntent().getLongExtra("VideoRecorder_MsgId", -1L);
    this.rD = getIntent().getExtras().getString("VideoPlayer_File_nam");
    this.size = getIntent().getIntExtra("VideoRecorder_VideoSize", 0);
    this.length = getIntent().getIntExtra("VideoRecorder_VideoLength", 0);
    this.ccE = com.tencent.mm.ai.m.DE().gZ(this.rD);
    aa.d("MicroMsg.VideoPlayerActivity", com.tencent.mm.compatible.g.j.qf() + " initView");
    this.ekZ = ((ImageButton)findViewById(2131364070));
    this.ekZ.setOnClickListener(new g(this));
    aa.d("MicroMsg.VideoPlayerActivity", com.tencent.mm.compatible.g.j.qf() + " initView");
    this.hsL = ((VideoView)findViewById(2131364073));
    this.hsL.setOnErrorListener(new h(this));
    this.hsL.setOnTouchListener(new i(this));
    aa.d("MicroMsg.VideoPlayerActivity", com.tencent.mm.compatible.g.j.qf() + " initView :" + this.ccE);
    if (this.ccE != null)
    {
      this.hsL.stopPlayback();
      this.hsL.wm(this.ccE);
    }
    aa.d("MicroMsg.VideoPlayerActivity", com.tencent.mm.compatible.g.j.qf() + " initView");
    this.hsL.setOnPreparedListener(new j(this));
    this.hsL.setOnCompletionListener(new k(this));
    a(0, 2130838841, new l(this));
    a(new m(this));
    this.hsM = ((TextView)findViewById(2131364074));
    this.hsJ = ((TextView)findViewById(2131364075));
    this.hsI = ((TextView)findViewById(2131364076));
  }

  public void finish()
  {
    if (be.nS() != null)
      be.nS().resume();
    if (be.nT() != null)
      be.nT().oi();
    super.finish();
  }

  protected final int getLayoutId()
  {
    return 2130903816;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
    if (be.nS() != null)
      be.nS().pause();
    if (be.nT() != null)
      be.nT().oh();
  }

  protected void onDestroy()
  {
    if (this.hsL.isPlaying())
      this.hsL.stopPlayback();
    this.hsN.azn();
    super.onDestroy();
  }

  protected void onPause()
  {
    ajF();
    super.onPause();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.VideoPlayerUI
 * JD-Core Version:    0.6.2
 */