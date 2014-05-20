package com.tencent.mm.model;

import android.os.Process;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bw;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

final class cg
  implements bw
{
  private String bRt = "";
  private String cjo = "";
  private int result = 0;
  public int type = -1;

  public cg(String paramString1, String paramString2)
  {
    this.cjo = paramString1;
    int i = this.cjo.indexOf("<ccr>");
    int m;
    if (i < 0)
    {
      m = 0;
      if (m == 0)
        break label106;
      this.type = 1;
      this.bRt = paramString2;
    }
    while (true)
    {
      return;
      int j = i + 5;
      int k = this.cjo.indexOf("</ccr>", j);
      if ((k < 0) || (k <= j))
      {
        m = 0;
        break;
      }
      m = 1;
      break;
      label106: boolean bool = this.cjo.startsWith("ver");
      int n = 0;
      if (!bool);
      while (n != 0)
      {
        this.type = 2;
        this.bRt = paramString2;
        return;
        this.cjo = this.cjo.substring(3);
        String str = this.cjo;
        n = 0;
        if (str != null)
        {
          int i1 = this.cjo.length();
          n = 0;
          if (i1 >= 8)
            n = 1;
        }
      }
    }
  }

  public final boolean ve()
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(this.type);
    arrayOfObject1[1] = this.bRt;
    arrayOfObject1[2] = Boolean.valueOf(ce.pn());
    aa.e("MicroMsg.NorMsgSource", "doInBackground type:%d path:%s runningTypeVer:%b", arrayOfObject1);
    if (this.type == -1);
    while (cj.hX(this.bRt))
      return false;
    if (this.type == 2)
    {
      if (ce.pn())
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(this.type);
        arrayOfObject3[1] = Boolean.valueOf(ce.pn());
        aa.f("MicroMsg.NorMsgSource", "doInBackground giveup type:%d runn:%b", arrayOfObject3);
        return false;
      }
      ce.vc();
    }
    long l = cj.FD();
    Process.setThreadPriority(Process.myTid(), 1);
    NorMsgSource.setLog(0);
    this.result = NorMsgSource.norMsgSourceGet(this.bRt, this.cjo);
    Object[] arrayOfObject2 = new Object[6];
    arrayOfObject2[0] = Long.valueOf(cj.N(l));
    arrayOfObject2[1] = Integer.valueOf(this.type);
    arrayOfObject2[2] = this.bRt;
    arrayOfObject2[3] = this.cjo;
    arrayOfObject2[4] = Integer.valueOf(this.result);
    arrayOfObject2[5] = Integer.valueOf(Process.getThreadPriority(Process.myTid()));
    aa.e("MicroMsg.NorMsgSource", "doInBackground time:%d type:%d path:%s src:%s %x pri:%d ", arrayOfObject2);
    return true;
  }

  public final boolean vf()
  {
    if (!be.se())
      aa.e("MicroMsg.NorMsgSource", "onPostExecute  has not set uin");
    do
    {
      return false;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(this.type);
      arrayOfObject1[1] = Integer.valueOf(this.result);
      aa.e("MicroMsg.NorMsgSource", "onPostExecute type:%d result:%x", arrayOfObject1);
      if (this.result == 0)
        aa.e("MicroMsg.NorMsgSource", "onPostExecute result is null.");
      if (this.type == 1)
      {
        e locale = be.uz().sr();
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Integer.valueOf(this.result);
        locale.set(70, String.format("<ccs>%x</ccs>", arrayOfObject4));
        return false;
      }
    }
    while (this.type != 2);
    Object[] arrayOfObject2 = new Object[4];
    arrayOfObject2[0] = Integer.valueOf(this.result);
    arrayOfObject2[1] = Integer.valueOf(NorMsgSource.getCrc(this.result, this.type));
    int i;
    if (ce.vb())
    {
      i = 1;
      arrayOfObject2[2] = Integer.valueOf(i);
      if (!ce.checkMsgLevel())
        break label267;
    }
    label267: for (int j = 1; ; j = 0)
    {
      arrayOfObject2[3] = Integer.valueOf(j);
      String str = String.format("_%x_%x_%d_%d", arrayOfObject2);
      be.uz().sr().set(71, str);
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = Integer.valueOf(this.type);
      arrayOfObject3[1] = Integer.valueOf(this.result);
      arrayOfObject3[2] = str;
      aa.e("MicroMsg.NorMsgSource", "onPostExecute type:%d result:%x secr:%s", arrayOfObject3);
      return false;
      i = 0;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.cg
 * JD-Core Version:    0.6.2
 */