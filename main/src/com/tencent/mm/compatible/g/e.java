package com.tencent.mm.compatible.g;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import com.tencent.mm.sdk.platformtools.aa;

@TargetApi(8)
public final class e
  implements d
{
  private AudioManager.OnAudioFocusChangeListener cfA = new f(this);
  private AudioManager cfy;
  private c cfz;
  private Context context;

  public e(Context paramContext)
  {
    this.context = paramContext;
  }

  public final void a(c paramc)
  {
    this.cfz = paramc;
  }

  public final boolean qc()
  {
    if ((this.cfy == null) && (this.context != null))
      this.cfy = ((AudioManager)this.context.getSystemService("audio"));
    if (this.cfy != null)
    {
      aa.d("MicroMsg.AudioFocusHelper", "abandonFocus");
      return 1 == this.cfy.abandonAudioFocus(this.cfA);
    }
    return false;
  }

  public final boolean requestFocus()
  {
    if ((this.cfy == null) && (this.context != null))
      this.cfy = ((AudioManager)this.context.getSystemService("audio"));
    if (this.cfy != null)
    {
      aa.d("MicroMsg.AudioFocusHelper", "requestFocus");
      return 1 == this.cfy.requestAudioFocus(this.cfA, 3, 2);
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.g.e
 * JD-Core Version:    0.6.2
 */