package com.tencent.mm.w;

import com.tencent.mm.model.be;
import com.tencent.mm.modelcdntran.b;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.j;
import com.tencent.mm.modelcdntran.keep_ProgressInfo;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.n.a;
import com.tencent.mm.n.ac;
import com.tencent.mm.protocal.a.ye;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

final class aa
  implements n
{
  aa(y paramy)
  {
  }

  public final int a(int paramInt, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
    String str1 = y.a(this.cue);
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = y.b(this.cue);
    arrayOfObject1[1] = Integer.valueOf(paramInt);
    arrayOfObject1[2] = paramkeep_ProgressInfo;
    arrayOfObject1[3] = paramkeep_SceneResult;
    com.tencent.mm.sdk.platformtools.aa.e(str1, "cdntra cdnCallback clientid:%s startRet:%d proginfo:[%s] res:[%s]", arrayOfObject1);
    if (paramInt == -21005)
    {
      String str9 = y.a(this.cue);
      Object[] arrayOfObject8 = new Object[1];
      arrayOfObject8[0] = y.b(this.cue);
      com.tencent.mm.sdk.platformtools.aa.c(str9, "cdntra  ERR_CNDCOM_MEDIA_IS_UPLOADING clientid:%s", arrayOfObject8);
      if (y.c(this.cue) != null)
        y.c(this.cue).AS();
    }
    e locale1;
    do
    {
      do
      {
        do
        {
          do
          {
            return 0;
            if (paramInt == 0)
              break;
            String str8 = y.a(this.cue);
            Object[] arrayOfObject6 = new Object[2];
            arrayOfObject6[0] = y.b(this.cue);
            arrayOfObject6[1] = Integer.valueOf(paramInt);
            com.tencent.mm.sdk.platformtools.aa.b(str8, "cdntra cdnCallback clientid:%s startRet:%d", arrayOfObject6);
            o.dK((int)y.d(this.cue));
            o.dJ((int)y.d(this.cue));
            com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
            Object[] arrayOfObject7 = new Object[8];
            arrayOfObject7[0] = Integer.valueOf(paramInt);
            arrayOfObject7[1] = Integer.valueOf(1);
            arrayOfObject7[2] = Long.valueOf(y.e(this.cue));
            arrayOfObject7[3] = Long.valueOf(cj.FD());
            arrayOfObject7[4] = Integer.valueOf(h.M(al.getContext()));
            arrayOfObject7[5] = Integer.valueOf(y.f(this.cue));
            arrayOfObject7[6] = Integer.valueOf(paramkeep_SceneResult.field_fileLength);
            arrayOfObject7[7] = paramkeep_SceneResult.field_transInfo;
            localm2.d(10421, arrayOfObject7);
            y.g(this.cue).a(3, paramInt, "", this.cue);
          }
          while (y.c(this.cue) == null);
          y.c(this.cue).AS();
          return 0;
          locale1 = ag.Ba().E(y.h(this.cue));
          if ((locale1 != null) && (locale1.AG() == y.h(this.cue)))
            break;
          j.yy().eT(y.b(this.cue));
          String str2 = y.a(this.cue);
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Long.valueOf(y.h(this.cue));
          arrayOfObject2[1] = y.b(this.cue);
          com.tencent.mm.sdk.platformtools.aa.b(str2, "cdntra get imginfo failed maybe delete by user imgLocalId:%d client:%s", arrayOfObject2);
        }
        while (y.c(this.cue) == null);
        y.c(this.cue).AS();
        return 0;
        if (paramkeep_ProgressInfo != null)
        {
          y.a(this.cue, locale1, paramkeep_ProgressInfo.field_finishedLength, 0, 0);
          return 0;
        }
      }
      while (paramkeep_SceneResult == null);
      if (paramkeep_SceneResult.field_retCode == 0)
        break;
      String str7 = y.a(this.cue);
      Object[] arrayOfObject4 = new Object[3];
      arrayOfObject4[0] = y.b(this.cue);
      arrayOfObject4[1] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      arrayOfObject4[2] = paramkeep_SceneResult;
      com.tencent.mm.sdk.platformtools.aa.b(str7, "cdntra clientid:%s sceneResult.retCode:%d sceneResult[%s]", arrayOfObject4);
      o.dK((int)y.d(this.cue));
      o.dJ((int)y.d(this.cue));
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject5 = new Object[8];
      arrayOfObject5[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      arrayOfObject5[1] = Integer.valueOf(1);
      arrayOfObject5[2] = Long.valueOf(y.e(this.cue));
      arrayOfObject5[3] = Long.valueOf(cj.FD());
      arrayOfObject5[4] = Integer.valueOf(h.M(al.getContext()));
      arrayOfObject5[5] = Integer.valueOf(y.f(this.cue));
      arrayOfObject5[6] = Integer.valueOf(paramkeep_SceneResult.field_fileLength);
      arrayOfObject5[7] = paramkeep_SceneResult.field_transInfo;
      localm1.d(10421, arrayOfObject5);
      y.g(this.cue).a(3, paramkeep_SceneResult.field_retCode, "", this.cue);
    }
    while (y.c(this.cue) == null);
    y.c(this.cue).AS();
    return 0;
    String str3 = y.a(this.cue);
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = Boolean.valueOf(paramkeep_SceneResult.field_isHitCacheUpload);
    com.tencent.mm.sdk.platformtools.aa.d(str3, "uploadMsgImg by cdn, isHitCacheUpload: %b", arrayOfObject3);
    String str4 = y.i(this.cue);
    if (cj.hX(str4))
    {
      String str5 = "<msg><img aeskey=\"" + paramkeep_SceneResult.field_aesKey + "\" cdnmidimgurl=\"" + paramkeep_SceneResult.field_fileId + "\" cdnbigimgurl=\"" + paramkeep_SceneResult.field_fileId + "\" ";
      String str6 = str5 + "cdnthumburl=\"" + paramkeep_SceneResult.field_fileId + "\" cdnthumbaeskey=\"" + paramkeep_SceneResult.field_aesKey + "\" ";
      str4 = str6 + "length=\"" + paramkeep_SceneResult.field_midimgLength + "\" hdlength=\"" + paramkeep_SceneResult.field_fileLength + "\"/></msg>";
      com.tencent.mm.sdk.platformtools.aa.d(y.a(this.cue), "cdn callback new build cdnInfo:%s", new Object[] { str4 });
    }
    locale1.fT(str4);
    ag.Ba().a(locale1.AG(), locale1);
    e locale2 = ag.Ba().E(y.d(this.cue));
    locale2.fT(str4);
    ag.Ba().a(locale2.AG(), locale2);
    be.uA().d(new ae((ye)y.j(this.cue).wr(), locale1, paramkeep_SceneResult, new ab(this, paramkeep_SceneResult, locale1)));
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.aa
 * JD-Core Version:    0.6.2
 */