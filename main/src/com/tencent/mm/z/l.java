package com.tencent.mm.z;

import com.tencent.mm.n.v;
import com.tencent.mm.protocal.ar;
import com.tencent.mm.protocal.as;
import com.tencent.mm.protocal.p;
import com.tencent.mm.protocal.q;

public final class l extends v
{
  private final ar cvi = new ar();
  private final as cvj;
  private final boolean cvk;

  public l(as paramas)
  {
    this.cvj = paramas;
    this.cvk = true;
  }

  public l(boolean paramBoolean)
  {
    this.cvj = new as();
    this.cvk = paramBoolean;
  }

  public final int getType()
  {
    return 38;
  }

  public final String getUri()
  {
    return "/cgi-bin/micromsg-bin/newsync";
  }

  public final p wu()
  {
    return this.cvi;
  }

  public final q wv()
  {
    return this.cvj;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.l
 * JD-Core Version:    0.6.2
 */