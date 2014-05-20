package com.tencent.mm.modelsimple;

import com.tencent.mm.n.v;
import com.tencent.mm.protocal.ba;
import com.tencent.mm.protocal.bb;
import com.tencent.mm.protocal.p;
import com.tencent.mm.protocal.q;

final class h extends v
{
  private final ba cwV = new ba();
  private final bb cwW = new bb();

  public final int getType()
  {
    return 26;
  }

  public final String getUri()
  {
    return "/cgi-bin/micromsg-bin/sendcard";
  }

  protected final p wu()
  {
    return this.cwV;
  }

  public final q wv()
  {
    return this.cwW;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.h
 * JD-Core Version:    0.6.2
 */