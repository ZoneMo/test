package com.tencent.mm.modelfriend;

import com.tencent.mm.n.v;
import com.tencent.mm.protocal.aj;
import com.tencent.mm.protocal.ak;
import com.tencent.mm.protocal.p;
import com.tencent.mm.protocal.q;

public final class ao extends v
{
  private final aj crn = new aj();
  private final ak cro = new ak();

  public final int getType()
  {
    return 429;
  }

  public final String getUri()
  {
    return "/cgi-bin/micromsg-bin/getsuggestalias";
  }

  public final int wK()
  {
    return 1;
  }

  protected final p wu()
  {
    return this.crn;
  }

  public final q wv()
  {
    return this.cro;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.ao
 * JD-Core Version:    0.6.2
 */