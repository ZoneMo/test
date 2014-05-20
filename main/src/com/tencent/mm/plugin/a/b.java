package com.tencent.mm.plugin.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.protocal.a.mf;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;

public final class b
{
  public static String FL()
  {
    return al.getContext().getSharedPreferences(al.azs(), 0).getString("reg_last_exit_ui", "");
  }

  public static void b(boolean paramBoolean, String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    mf localmf = new mf();
    localmf.fAC = 1;
    localmf.fNl = 10645;
    localmf.fDR = ((int)cj.FC());
    localmf.fDQ = ((int)cj.FC());
    if (paramBoolean);
    for (localmf.fNk = (paramString + "," + zL() + "," + cj.FD() + "," + FL()); ; localmf.fNk = (paramString + "," + zL() + "," + cj.FD() + "," + al.getContext().getSharedPreferences(al.azs(), 0).getString("reg_next_enter_ui", "")))
    {
      localLinkedList.add(localmf);
      com.tencent.mm.plugin.b.a.b localb = new com.tencent.mm.plugin.b.a.b(localLinkedList);
      be.uA().d(localb);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(10645);
      arrayOfObject[1] = localmf.fNk;
      aa.e("MicroMsg.AccountSyncKvReport", "accountsync rsakv logID:%d val:%s", arrayOfObject);
      return;
    }
  }

  public static void eT(int paramInt)
  {
    al.getContext().getSharedPreferences(al.azs(), 0).edit().putInt("reg_style_id", paramInt).commit();
  }

  public static void id(String paramString)
  {
    al.getContext().getSharedPreferences(al.azs(), 0).edit().putString("reg_last_exit_ui", paramString).commit();
  }

  public static void ie(String paramString)
  {
    al.getContext().getSharedPreferences(al.azs(), 0).edit().putString("reg_next_enter_ui", paramString).commit();
  }

  public static void jdMethod_if(String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    mf localmf = new mf();
    localmf.fAC = 1;
    localmf.fNl = 10645;
    localmf.fDR = ((int)cj.FC());
    localmf.fDQ = ((int)cj.FC());
    localmf.fNk = (paramString + "," + zL() + "," + cj.FD() + "," + FL());
    localLinkedList.add(localmf);
    com.tencent.mm.plugin.b.a.b localb = new com.tencent.mm.plugin.b.a.b(localLinkedList);
    be.uA().d(localb);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(10645);
    arrayOfObject[1] = localmf.fNk;
    aa.e("MicroMsg.AccountSyncKvReport", "accountsync rsakv logID:%d val:%s", arrayOfObject);
  }

  private static int zL()
  {
    return al.getContext().getSharedPreferences(al.azs(), 0).getInt("reg_style_id", 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.a.b
 * JD-Core Version:    0.6.2
 */