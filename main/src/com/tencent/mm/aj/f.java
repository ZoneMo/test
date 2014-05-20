package com.tencent.mm.aj;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.storage.h;

public final class f
  implements m
{
  private static final String cDw = h.cfC + "tmp_voiceaddr.spx";
  private static final String cDx = h.cfC + "tmp_voiceaddr.amr";
  private static int ccW = 100;
  private int cDA = 0;
  private int cDB;
  private Thread cDC;
  private a cDD;
  private boolean cDE;
  private int cDq = 1;
  private i cDv = null;
  private int cDy = 0;
  private int cDz = 0;
  private int cbM = 5;

  public f(i parami, int paramInt)
  {
    this.cDB = i;
    this.cDD = null;
    this.cDE = false;
    this.cDv = parami;
    this.cDq = paramInt;
    if (this.cDq == 1);
    while (true)
    {
      this.cDB = i;
      return;
      i = 1500000;
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (this.cDq == 0)
      be.uA().b(349, this);
    String[] arrayOfString;
    long l;
    while (true)
    {
      arrayOfString = ((a)paramx).EF();
      l = ((a)paramx).EG();
      if (this.cDA != 2)
        break;
      return;
      be.uA().b(206, this);
    }
    StringBuilder localStringBuilder = new StringBuilder("onSceneEnd errType:").append(paramInt1).append(" errCode:").append(paramInt2).append(" list:");
    if (arrayOfString == null);
    for (int i = -1; ; i = arrayOfString.length)
    {
      aa.e("MicroMsg.SceneVoiceAddr", i);
      if (this.cDv == null)
        break;
      if ((paramInt2 == 0) && (paramInt1 == 0))
        break label162;
      this.cDA = 4;
      i locali = this.cDv;
      ((a)paramx).DC();
      locali.EH();
      return;
    }
    label162: this.cDv.a(arrayOfString, l);
  }

  public final void cancel()
  {
    this.cDA = 2;
    this.cDv = null;
  }

  public final int getMaxAmplitude()
  {
    aa.d("MicroMsg.SceneVoiceAddr", "cAmplitude " + this.cDz);
    int i = this.cDz;
    this.cDz = 0;
    if (i > ccW)
      ccW = i;
    aa.d("getMaxAmplitude", " map: " + i + " max:" + ccW + " per:" + i * 100 / ccW);
    return i * 100 / ccW;
  }

  public final void start()
  {
    if ((this.cDq == 0) && (ba.bp(al.getContext())));
    for (boolean bool = true; ; bool = false)
    {
      this.cDE = bool;
      this.cDC = new Thread(new g(this));
      this.cDC.start();
      return;
    }
  }

  public final void stop()
  {
    this.cDA = 3;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.aj.f
 * JD-Core Version:    0.6.2
 */