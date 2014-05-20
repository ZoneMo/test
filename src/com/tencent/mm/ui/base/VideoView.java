package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import android.widget.RelativeLayout.LayoutParams;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.IOException;

public class VideoView extends SurfaceView
  implements MediaController.MediaPlayerControl
{
  private MediaPlayer.OnCompletionListener cCL;
  private MediaPlayer.OnErrorListener cCM;
  private String gFd;
  private SurfaceHolder gFe = null;
  private MediaPlayer gFf = null;
  private boolean gFg;
  private int gFh;
  private int gFi;
  private MediaController gFj;
  private MediaPlayer.OnPreparedListener gFk;
  private int gFl;
  private boolean gFm;
  private int gFn;
  MediaPlayer.OnVideoSizeChangedListener gFo = new el(this);
  MediaPlayer.OnPreparedListener gFp = new em(this);
  private MediaPlayer.OnCompletionListener gFq = new en(this);
  private MediaPlayer.OnErrorListener gFr = new eo(this);
  private MediaPlayer.OnBufferingUpdateListener gFs = new ep(this);
  SurfaceHolder.Callback gFt = new eq(this);
  private Context mContext;
  private int oW;
  private int uN;
  private int uO;

  public VideoView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    aHW();
  }

  public VideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    this.mContext = paramContext;
    aHW();
  }

  public VideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mContext = paramContext;
    aHW();
  }

  private void aHW()
  {
    this.gFh = 0;
    this.gFi = 0;
    getHolder().addCallback(this.gFt);
    getHolder().setType(3);
    setFocusable(true);
    setFocusableInTouchMode(true);
    requestFocus();
  }

  private void aHY()
  {
    if ((this.gFd == null) || (this.gFe == null));
    while (true)
    {
      return;
      Intent localIntent = new Intent("com.android.music.musicservicecommand");
      localIntent.putExtra("command", "pause");
      this.mContext.sendBroadcast(localIntent);
      if (this.gFf != null)
      {
        this.gFf.reset();
        this.gFf.release();
        this.gFf = null;
      }
      try
      {
        this.gFf = new MediaPlayer();
        this.gFf.setOnPreparedListener(this.gFp);
        this.gFf.setOnVideoSizeChangedListener(this.gFo);
        this.gFg = false;
        aa.v("MicroMsg.VideoView", "reset duration to -1 in openVideo");
        this.oW = -1;
        this.gFf.setOnCompletionListener(this.gFq);
        this.gFf.setOnErrorListener(this.gFr);
        this.gFf.setOnBufferingUpdateListener(this.gFs);
        this.gFl = 0;
        this.gFf.setDataSource(this.gFd);
        this.gFf.setDisplay(this.gFe);
        this.gFf.setAudioStreamType(3);
        this.gFf.setScreenOnWhilePlaying(true);
        this.gFf.prepareAsync();
        this.gFi = this.gFf.getVideoHeight();
        this.gFh = this.gFf.getVideoWidth();
        if ((this.gFf != null) && (this.gFj != null))
        {
          this.gFj.setMediaPlayer(this);
          if ((getParent() instanceof View))
          {
            localObject = (View)getParent();
            this.gFj.setAnchorView((View)localObject);
            this.gFj.setEnabled(this.gFg);
            return;
          }
        }
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          return;
          Object localObject = this;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
      }
    }
  }

  private void aHZ()
  {
    if (this.gFj.isShowing())
    {
      this.gFj.hide();
      return;
    }
    this.gFj.show();
  }

  public final void aHV()
  {
    int i = this.gFh;
    int j = this.gFi;
    aa.v("MicroMsg.VideoView", "video size before:" + i + "   " + j);
    aa.v("MicroMsg.VideoView", "layout size before:" + getWidth() + "   " + getHeight());
    int k = getWidth();
    int m = getHeight();
    if (k <= 0);
    for (int n = i; ; n = k)
    {
      if (m <= 0);
      for (int i1 = j; ; i1 = m)
      {
        float f1 = 1.0F * n / i;
        float f2 = 1.0F * i1 / j;
        RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)getLayoutParams();
        if (f1 > f2)
          localLayoutParams.width = ((int)(f2 * i));
        for (localLayoutParams.height = i1; ; localLayoutParams.height = ((int)(f1 * j)))
        {
          localLayoutParams.addRule(13);
          setLayoutParams(localLayoutParams);
          invalidate();
          aa.v("MicroMsg.VideoView", "video size after:" + this.gFf.getVideoWidth() + "   " + this.gFf.getVideoHeight());
          aa.v("MicroMsg.VideoView", "layout size after:" + getWidth() + "   " + getHeight());
          return;
          localLayoutParams.width = n;
        }
      }
    }
  }

  public final int aHX()
  {
    if (this.gFf == null)
      return 0;
    return this.gFf.getDuration() - this.gFf.getCurrentPosition();
  }

  public boolean canPause()
  {
    return false;
  }

  public boolean canSeekBackward()
  {
    return false;
  }

  public boolean canSeekForward()
  {
    return false;
  }

  public int getBufferPercentage()
  {
    if (this.gFf != null)
      return this.gFl;
    return 0;
  }

  public int getCurrentPosition()
  {
    if ((this.gFf != null) && (this.gFg))
      return this.gFf.getCurrentPosition();
    return 0;
  }

  public int getDuration()
  {
    if ((this.gFf != null) && (this.gFg))
    {
      if (this.oW > 0)
        return this.oW;
      this.oW = this.gFf.getDuration();
      return this.oW;
    }
    this.oW = -1;
    return this.oW;
  }

  public boolean isPlaying()
  {
    if ((this.gFf != null) && (this.gFg))
      return this.gFf.isPlaying();
    return false;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((this.gFg) && (paramInt != 4) && (paramInt != 24) && (paramInt != 25) && (paramInt != 82) && (paramInt != 5) && (paramInt != 6) && (this.gFf != null) && (this.gFj != null))
    {
      if ((paramInt == 79) || (paramInt == 85))
      {
        if (this.gFf.isPlaying())
        {
          pause();
          this.gFj.show();
        }
        while (true)
        {
          return true;
          start();
          this.gFj.hide();
        }
      }
      if ((paramInt != 86) || (!this.gFf.isPlaying()))
        break label138;
      pause();
      this.gFj.show();
    }
    while (true)
    {
      return super.onKeyDown(paramInt, paramKeyEvent);
      label138: aHZ();
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(this.gFh, paramInt1), getDefaultSize(this.gFi, paramInt2));
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.gFg) && (this.gFf != null) && (this.gFj != null))
      aHZ();
    return false;
  }

  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    if ((this.gFg) && (this.gFf != null) && (this.gFj != null))
      aHZ();
    return false;
  }

  public void pause()
  {
    if ((this.gFf != null) && (this.gFg) && (this.gFf.isPlaying()))
      this.gFf.pause();
    this.gFm = false;
  }

  public void seekTo(int paramInt)
  {
    if ((this.gFf != null) && (this.gFg))
    {
      this.gFf.seekTo(paramInt);
      return;
    }
    this.gFn = paramInt;
  }

  public final void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    this.cCL = paramOnCompletionListener;
  }

  public final void setOnErrorListener(MediaPlayer.OnErrorListener paramOnErrorListener)
  {
    this.cCM = paramOnErrorListener;
  }

  public final void setOnPreparedListener(MediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    this.gFk = paramOnPreparedListener;
  }

  public void start()
  {
    if ((this.gFf != null) && (this.gFg))
    {
      this.gFf.start();
      this.gFm = false;
      return;
    }
    this.gFm = true;
  }

  public final void stopPlayback()
  {
    if (this.gFf != null)
    {
      this.gFf.stop();
      this.gFf.release();
      this.gFf = null;
    }
  }

  public final void wm(String paramString)
  {
    this.gFd = paramString;
    this.gFm = false;
    this.gFn = 0;
    aHY();
    requestLayout();
    invalidate();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.VideoView
 * JD-Core Version:    0.6.2
 */