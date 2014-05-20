package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.protocal.a.ae;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import java.util.LinkedList;

public final class k
{
  public static ae a(ak paramak, boolean paramBoolean1, String paramString, PInt paramPInt, LinkedList paramLinkedList, boolean paramBoolean2)
  {
    if (paramak.AH() == 0)
    {
      aa.e("MicroMsg.PackBckChatMsgLogic", "msg svr Id == 0" + paramak.aCl() + " " + paramak.getType() + " " + paramak.getContent());
      return null;
    }
    ae localae1 = new ae();
    localae1.fzo = paramak.AH();
    localae1.fzz = "";
    int i;
    String str2;
    ae localae2;
    if (paramak.rO() == 1)
    {
      String str3 = paramak.aCl();
      i = 2;
      str2 = str3;
      localae2 = localae1;
    }
    y localy;
    while (true)
    {
      localae2.fAu = i;
      localae1.fAz = new rv();
      localae1.fAA = 0;
      localae1.fAB = 0;
      localae1.fzz = "";
      localae1.fzs = new rw().sn(paramString);
      localae1.fzt = new rw().sn(str2);
      localae1.dGR = s.kb(paramak.getType());
      localae1.fAv = ((int)(paramak.DL() / 1000L));
      rw localrw = new rw();
      localrw.sn(cj.R(paramak.getContent(), ""));
      localae1.fzv = localrw;
      localy = d.eV(s.kb(paramak.getType()));
      if (localy != null)
        break;
      aa.d("MicroMsg.PackBckChatMsgLogic", "unknow type ");
      return null;
      String str1 = paramak.aCl();
      if (paramBoolean2)
      {
        i = 3;
        str2 = paramString;
        paramString = str1;
        localae2 = localae1;
      }
      else
      {
        i = 4;
        str2 = paramString;
        paramString = str1;
        localae2 = localae1;
      }
    }
    int j = localy.a(localae1, paramBoolean1, paramak, paramLinkedList);
    if (j < 0)
      return null;
    paramPInt.value = (j + paramPInt.value);
    paramPInt.value = (60 + paramPInt.value);
    return localae1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.k
 * JD-Core Version:    0.6.2
 */