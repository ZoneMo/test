package com.tencent.mm.ui.tools;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

final class bt
{
  private String bNl;
  private int cLI;
  private List hjt;
  private int hju;

  public bt(long paramLong, String paramString)
  {
    this.bNl = paramString;
    this.hjt = new LinkedList();
    ak localak = be.uz().sw().bU(paramLong);
    if ((localak == null) || (localak.Bo() == 0L))
    {
      Assert.assertTrue("MicroMsg.AutoList <init>, currentMsg does not exist, currentMsgId = " + paramLong + ", stack = " + cj.azV(), false);
      return;
    }
    this.cLI = be.uz().sw().vm(paramString);
    aa.i("MicroMsg.AutoList", "<init>, totalCount = " + this.cLI);
    this.hju = be.uz().sw().j(paramString, paramLong);
    this.hjt.add(localak);
    aNl();
    b(paramLong, true);
    b(paramLong, false);
  }

  private void aNl()
  {
    aa.d("MicroMsg.AutoList", "------begin-----");
    Iterator localIterator = this.hjt.iterator();
    while (localIterator.hasNext())
    {
      ak localak = (ak)localIterator.next();
      aa.d("MicroMsg.AutoList", "msgid = " + localak.Bo() + ", msgSvrId = " + localak.AH());
    }
    aa.d("MicroMsg.AutoList", "-------end------");
  }

  private void b(long paramLong, boolean paramBoolean)
  {
    aa.i("MicroMsg.AutoList", "start loadMsgInfo, currentMsgId = " + paramLong + ", forward = " + paramBoolean);
    List localList = be.uz().sw().b(this.bNl, paramLong, paramBoolean);
    if ((localList == null) || (localList.size() == 0))
    {
      aa.w("MicroMsg.AutoList", "loadMsgInfo fail, addedMsgList is null, forward = " + paramBoolean);
      return;
    }
    aa.i("MicroMsg.AutoList", "loadMsgInfo done, new added list, size = " + localList.size() + ", forward = " + paramBoolean);
    if (paramBoolean)
      this.hjt.addAll(localList);
    while (true)
    {
      aNl();
      return;
      this.hjt.addAll(0, localList);
      this.hju -= localList.size();
      if (this.hju < 0)
      {
        aa.e("MicroMsg.AutoList", "loadMsgInfo fail, min should not be minus, min = " + this.hju);
        return;
      }
      aa.i("MicroMsg.AutoList", "min from " + (this.hju + localList.size()) + " to " + this.hju);
    }
  }

  public final int PG()
  {
    return this.cLI;
  }

  public final ak oc(int paramInt)
  {
    int i = -1 + (this.hju + this.hjt.size());
    if ((paramInt < this.hju) || (paramInt > i))
    {
      aa.e("MicroMsg.AutoList", "get, invalid pos " + paramInt + ", min = " + this.hju + ", max = " + i);
      return null;
    }
    aa.i("MicroMsg.AutoList", "get, pos = " + paramInt);
    if (paramInt == this.hju)
    {
      ak localak2 = (ak)this.hjt.get(0);
      b(localak2.Bo(), false);
      return localak2;
    }
    if ((paramInt == i) && (i < -1 + this.cLI))
    {
      ak localak1 = (ak)this.hjt.get(-1 + this.hjt.size());
      b(localak1.Bo(), true);
      return localak1;
    }
    return (ak)this.hjt.get(paramInt - this.hju);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("AutoList, Size = " + this.hjt.size());
    localStringBuilder.append("; Content = {");
    Iterator localIterator = this.hjt.iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append(((ak)localIterator.next()).Bo());
      localStringBuilder.append(",");
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bt
 * JD-Core Version:    0.6.2
 */