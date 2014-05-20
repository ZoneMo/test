package com.tencent.mm.ui.chatting;

import android.app.Activity;
import android.os.Handler;
import android.view.ViewStub;
import com.tencent.mm.a.c;
import com.tencent.mm.ab.d;
import com.tencent.mm.ab.f;
import com.tencent.mm.ab.g;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;

public final class kc
{
  private com.tencent.mm.ab.e gQw;
  private ChattingAnimFrame gQx = null;

  private static void p(int paramInt, boolean paramBoolean)
  {
    while (true)
    {
      f localf1;
      try
      {
        byte[] arrayOfByte1 = c.h(be.uz().sW() + "eggresult.rep", 0, -1);
        g localg;
        f localf2;
        if (arrayOfByte1 != null)
        {
          aa.d("MicroMsg.EggMgr", "data not null, parse it");
          localg = new g().u(arrayOfByte1);
          Iterator localIterator = localg.cvR.iterator();
          if (!localIterator.hasNext())
            break label288;
          localf2 = (f)localIterator.next();
          if (localf2.cvK != paramInt)
            continue;
          if (paramBoolean)
          {
            localf2.cvP = (1 + localf2.cvP);
            break label294;
            if (i == 0)
            {
              localf1 = new f();
              localf1.cvK = paramInt;
              if (!paramBoolean)
                break label279;
              localf1.cvP = 1;
              localg.cvR.add(localf1);
            }
            byte[] arrayOfByte2 = localg.toByteArray();
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = localg.toString();
            aa.e("MicroMsg.EggMgr", "report list is %s, then save it", arrayOfObject2);
            c.a(be.uz().sW() + "eggresult.rep", arrayOfByte2, arrayOfByte2.length);
          }
        }
        else
        {
          aa.d("MicroMsg.EggMgr", "data is null, new one");
          localg = new g();
          continue;
        }
        localf2.cvQ = (1 + localf2.cvQ);
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localException.getLocalizedMessage();
        aa.c("MicroMsg.EggMgr", "statistics crash : %s", arrayOfObject1);
        return;
      }
      label279: localf1.cvQ = 1;
      continue;
      label288: int i = 0;
      continue;
      label294: i = 1;
    }
  }

  public final boolean a(String paramString, Activity paramActivity, boolean paramBoolean)
  {
    try
    {
      byte[] arrayOfByte;
      if (this.gQw == null)
      {
        arrayOfByte = c.h(be.uz().sW() + "eggingfo.ini", 0, -1);
        if (arrayOfByte != null)
          break label136;
        aa.d("MicroMsg.EggMgr", "data is null, parse EggList from config file fail");
      }
      while (true)
      {
        if (1000L * au.M(au.b((Long)be.uz().sr().get(68108))) > 21600000L)
        {
          be.uz().sr().set(68108, Long.valueOf(au.FC()));
          new Handler().postDelayed(new kd(this), 10000L);
        }
        if (this.gQw != null)
          break;
        aa.d("MicroMsg.EggMgr", "eggList is null");
        return false;
        label136: this.gQw = new com.tencent.mm.ab.e().t(arrayOfByte);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localException.getLocalizedMessage();
        aa.c("MicroMsg.EggMgr", "init crash : %s", arrayOfObject1);
      }
      int i = (int)cj.FC();
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = Integer.valueOf(this.gQw.cvN.size());
      aa.e("MicroMsg.EggMgr", "cursecond is %d, getEggList.size is %d", arrayOfObject2);
      Iterator localIterator1 = this.gQw.cvN.iterator();
      d locald;
      String str;
      do
      {
        Iterator localIterator2;
        while (!localIterator2.hasNext())
        {
          if (!localIterator1.hasNext())
            break;
          locald = (d)localIterator1.next();
          localIterator2 = locald.cvI.iterator();
        }
        str = (String)localIterator2.next();
      }
      while ((au.hX(paramString)) || (au.hX(str)) || (!paramString.toLowerCase().contains(str.toLowerCase())));
      if (this.gQx == null)
      {
        ViewStub localViewStub = (ViewStub)paramActivity.findViewById(2131362217);
        if (localViewStub != null)
          localViewStub.inflate();
        this.gQx = ((ChattingAnimFrame)paramActivity.findViewById(2131362350));
      }
      if ((locald.cvL <= i) && (i <= locald.cvM))
      {
        this.gQx.j(paramActivity, locald.cvJ);
        p(locald.cvK, paramBoolean);
        Object[] arrayOfObject4 = new Object[3];
        arrayOfObject4[0] = str;
        arrayOfObject4[1] = Integer.valueOf(locald.cvL);
        arrayOfObject4[2] = Integer.valueOf(locald.cvM);
        aa.e("MicroMsg.EggMgr", "match keyWord[%s], time[%d - %d]", arrayOfObject4);
        return true;
      }
      if ((locald.cvL == locald.cvM) && (locald.cvL == 0))
      {
        this.gQx.j(paramActivity, locald.cvJ);
        p(locald.cvK, paramBoolean);
        aa.e("MicroMsg.EggMgr", "match keyWord[%s], time[0 - 0]", new Object[] { str });
        return true;
      }
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = str;
      arrayOfObject3[1] = Integer.valueOf(locald.cvL);
      arrayOfObject3[2] = Integer.valueOf(locald.cvM);
      aa.e("MicroMsg.EggMgr", "match keyWord[%s], but not match time[%d - %d]", arrayOfObject3);
      return false;
      aa.d("MicroMsg.EggMgr", "no match");
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.kc
 * JD-Core Version:    0.6.2
 */