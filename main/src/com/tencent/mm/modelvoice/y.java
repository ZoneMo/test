package com.tencent.mm.modelvoice;

import android.content.Context;
import com.tencent.mm.compatible.audio.e;
import com.tencent.mm.compatible.g.a;
import com.tencent.mm.model.be;
import com.tencent.mm.n.o;
import com.tencent.mm.n.p;
import com.tencent.mm.n.q;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import junit.framework.Assert;

public final class y
  implements o
{
  private boolean bMW = false;
  private d cBY = null;
  private boolean cBZ = false;
  private a cCa;
  private int cCb = 0;
  private q cCc = null;
  private p cCd;
  private Context context = null;

  public y(Context paramContext)
  {
    this(paramContext, 0);
  }

  public y(Context paramContext, int paramInt)
  {
    this.context = paramContext;
    this.cCa = new a(paramContext);
    this.cCb = paramInt;
  }

  public final void R(boolean paramBoolean)
  {
    if (be.uB().pg())
      paramBoolean = false;
    if (this.bMW == paramBoolean);
    do
    {
      return;
      this.bMW = paramBoolean;
    }
    while ((this.cBY == null) || (!this.cBY.isPlaying()));
    this.cBY.R(paramBoolean);
  }

  public final void a(p paramp)
  {
    this.cCd = paramp;
  }

  public final void a(q paramq)
  {
    this.cCc = paramq;
  }

  public final boolean a(String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Boolean.valueOf(paramBoolean1);
    aa.e("MicroMsg.SceneVoice", "start file name:[%s] speakerOn:[%b]", arrayOfObject);
    be.uB().pe();
    boolean bool;
    int j;
    int i;
    if (paramString.length() > 0)
    {
      bool = true;
      Assert.assertTrue(bool);
      if (paramInt != -1)
        break label377;
      j = this.cCb;
      if (!cj.hX(paramString))
        break label238;
      i = -1;
    }
    while (true)
    {
      label72: label101: String str;
      if (i == 0)
        if (this.context != null)
        {
          this.cBY = new bl((byte)0);
          if (be.uB().pg())
            paramBoolean1 = false;
          this.bMW = paramBoolean1;
          ab localab = new ab(this);
          if (this.cBY != null)
            this.cBY.a(localab);
          z localz = new z(this);
          if (this.cBY != null)
            this.cBY.a(localz);
          if (!paramBoolean2)
            break label340;
          str = paramString;
        }
      while (true)
      {
        if (this.cBY.k(str, paramBoolean1))
          break label367;
        aa.d("MicroMsg.SceneVoice", "Start Record PlayError fileName[" + paramString + "], [" + paramBoolean1 + "]");
        return false;
        bool = false;
        break;
        label238: aa.d("MicroMsg.VoiceFile", "fileName " + paramString);
        if (bg.a(paramString, j, paramBoolean2))
        {
          i = 0;
          break label72;
        }
        i = 1;
        break label72;
        this.cBY = new bl();
        break label101;
        if (i != 1)
          break label101;
        if (this.context != null)
        {
          this.cBY = new av(this.context);
          break label101;
        }
        this.cBY = new av();
        break label101;
        label340: if (this.cCb == 0)
          str = bi.fU(paramString);
        else
          str = null;
      }
      label367: this.cCa.requestFocus();
      return true;
      label377: i = paramInt;
    }
  }

  public final boolean isPlaying()
  {
    if (this.cBY == null);
    while (this.cBY.getStatus() != 1)
      return false;
    return true;
  }

  public final boolean l(String paramString, boolean paramBoolean)
  {
    return a(paramString, paramBoolean, false, -1);
  }

  public final boolean pause()
  {
    if (this.cBY == null)
      return false;
    boolean bool1 = this.cBY.isPlaying();
    boolean bool2 = false;
    if (bool1)
      bool2 = this.cBY.pause();
    be.uB().pf();
    be.uB().pb();
    this.cCa.qc();
    return bool2;
  }

  public final boolean po()
  {
    if (this.cBY == null)
      return false;
    be.uB().pe();
    if (be.uB().pg())
      this.bMW = false;
    boolean bool = this.cBY.po();
    this.cCa.requestFocus();
    return bool;
  }

  public final void stop()
  {
    if (this.cBY == null)
      return;
    if (this.cBY.isPlaying())
      this.cBY.pv();
    be.uB().pf();
    be.uB().pb();
    this.cCa.qc();
  }

  public final boolean wD()
  {
    return this.cBZ;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.y
 * JD-Core Version:    0.6.2
 */