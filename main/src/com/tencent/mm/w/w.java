package com.tencent.mm.w;

import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.keep_ProgressInfo;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

final class w
  implements n
{
  w(u paramu)
  {
  }

  public final int a(int paramInt, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
    if (paramInt == -21006)
    {
      String str5 = u.a(this.ctZ);
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = u.b(this.ctZ);
      aa.e(str5, "cdntra  ERR_CNDCOM_MEDIA_IS_DOWNLOADING clientid:%s", arrayOfObject5);
    }
    e locale;
    do
    {
      return 0;
      if (paramInt != 0)
      {
        o.dK((int)u.c(this.ctZ));
        o.dJ((int)u.c(this.ctZ));
        com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject4 = new Object[8];
        arrayOfObject4[0] = Integer.valueOf(paramInt);
        arrayOfObject4[1] = Integer.valueOf(2);
        arrayOfObject4[2] = Long.valueOf(u.d(this.ctZ));
        arrayOfObject4[3] = Long.valueOf(cj.FD());
        arrayOfObject4[4] = Integer.valueOf(h.M(al.getContext()));
        arrayOfObject4[5] = Integer.valueOf(u.e(this.ctZ));
        arrayOfObject4[6] = Integer.valueOf(u.f(this.ctZ));
        if (paramkeep_SceneResult == null);
        for (String str4 = ""; ; str4 = paramkeep_SceneResult.field_transInfo)
        {
          arrayOfObject4[7] = str4;
          localm2.d(10421, arrayOfObject4);
          u.g(this.ctZ).a(3, paramInt, "", this.ctZ);
          return 0;
        }
      }
      locale = ag.Ba().E(u.h(this.ctZ));
      if (paramkeep_ProgressInfo != null)
      {
        if (paramkeep_ProgressInfo.field_finishedLength == u.f(this.ctZ))
        {
          aa.d(u.a(this.ctZ), "cdntra ignore progress 100%");
          return 0;
        }
        String str3 = u.a(this.ctZ);
        Object[] arrayOfObject3 = new Object[3];
        arrayOfObject3[0] = u.b(this.ctZ);
        arrayOfObject3[1] = Integer.valueOf(paramkeep_ProgressInfo.field_finishedLength);
        arrayOfObject3[2] = Integer.valueOf(paramkeep_ProgressInfo.field_toltalLength);
        aa.e(str3, "cdntra progresscallback id:%s finish:%d total:%d", arrayOfObject3);
        u.a(this.ctZ, locale, u.f(this.ctZ), locale.getOffset(), paramkeep_ProgressInfo.field_finishedLength - locale.getOffset());
        return 0;
      }
    }
    while (paramkeep_SceneResult == null);
    com.tencent.mm.plugin.d.c.m localm1;
    Object[] arrayOfObject1;
    if (paramkeep_SceneResult.field_retCode != 0)
    {
      o.dJ((int)u.c(this.ctZ));
      String str2 = u.a(this.ctZ);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      aa.b(str2, "cdntra sceneResult.retCode :%d", arrayOfObject2);
      u.g(this.ctZ).a(3, paramkeep_SceneResult.field_retCode, "", this.ctZ);
      localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      arrayOfObject1 = new Object[8];
      arrayOfObject1[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      arrayOfObject1[1] = Integer.valueOf(2);
      arrayOfObject1[2] = Long.valueOf(u.d(this.ctZ));
      arrayOfObject1[3] = Long.valueOf(cj.FD());
      arrayOfObject1[4] = Integer.valueOf(h.M(al.getContext()));
      arrayOfObject1[5] = Integer.valueOf(u.e(this.ctZ));
      arrayOfObject1[6] = Integer.valueOf(u.f(this.ctZ));
      if (paramkeep_SceneResult != null)
        break label602;
    }
    label602: for (String str1 = ""; ; str1 = paramkeep_SceneResult.field_transInfo)
    {
      arrayOfObject1[7] = str1;
      localm1.d(10421, arrayOfObject1);
      return 0;
      u.a(this.ctZ, locale, u.f(this.ctZ), locale.getOffset(), u.f(this.ctZ) - locale.getOffset());
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.w
 * JD-Core Version:    0.6.2
 */