package com.tencent.mm.w;

import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

final class ab
  implements af
{
  ab(aa paramaa, keep_SceneResult paramkeep_SceneResult, e parame)
  {
  }

  public final void g(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject1 = new Object[8];
    arrayOfObject1[0] = Integer.valueOf(paramInt4);
    arrayOfObject1[1] = Integer.valueOf(1);
    arrayOfObject1[2] = Long.valueOf(y.e(this.cuf.cue));
    arrayOfObject1[3] = Long.valueOf(cj.FD());
    arrayOfObject1[4] = Integer.valueOf(h.M(al.getContext()));
    arrayOfObject1[5] = Integer.valueOf(y.f(this.cuf.cue));
    arrayOfObject1[6] = Integer.valueOf(this.cpl.field_fileLength);
    arrayOfObject1[7] = this.cpl.field_transInfo;
    localm.d(10421, arrayOfObject1);
    String str = y.a(this.cuf.cue);
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = y.b(this.cuf.cue);
    arrayOfObject2[1] = Integer.valueOf(paramInt3);
    arrayOfObject2[2] = Integer.valueOf(paramInt4);
    com.tencent.mm.sdk.platformtools.aa.e(str, "cdntra clientid:%s NetSceneUploadMsgImgForCdn ret:[%d,%d]", arrayOfObject2);
    if ((paramInt3 != 0) || (paramInt4 != 0))
    {
      o.dK((int)y.d(this.cuf.cue));
      o.dJ((int)y.d(this.cuf.cue));
      y.g(this.cuf.cue).a(paramInt3, paramInt4, "", this.cuf.cue);
      if (y.c(this.cuf.cue) != null)
        y.c(this.cuf.cue).AS();
      return;
    }
    y.a(this.cuf.cue, this.cua, this.cua.vR(), paramInt1, paramInt2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.ab
 * JD-Core Version:    0.6.2
 */