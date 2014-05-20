package com.tencent.mm.storage;

import com.tencent.mm.c.b.e;
import com.tencent.mm.plugin.chatroom.b.a;
import com.tencent.mm.protocal.a.cf;
import com.tencent.mm.sdk.e.ae;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class b extends e
{
  protected static ae cfX = localae;
  private a ggn = new a();
  public a ggo = this.ggn;
  private List ggp = new LinkedList();
  private Map ggq = new HashMap();

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[13];
    localae.bZx = new String[14];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "chatroomname";
    localae.gfA.put("chatroomname", "TEXT");
    localStringBuilder.append(" chatroomname TEXT default ''  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "chatroomname";
    localae.bZx[1] = "addtime";
    localae.gfA.put("addtime", "LONG");
    localStringBuilder.append(" addtime LONG");
    localStringBuilder.append(", ");
    localae.bZx[2] = "memberlist";
    localae.gfA.put("memberlist", "TEXT");
    localStringBuilder.append(" memberlist TEXT");
    localStringBuilder.append(", ");
    localae.bZx[3] = "displayname";
    localae.gfA.put("displayname", "TEXT");
    localStringBuilder.append(" displayname TEXT");
    localStringBuilder.append(", ");
    localae.bZx[4] = "chatroomnick";
    localae.gfA.put("chatroomnick", "TEXT");
    localStringBuilder.append(" chatroomnick TEXT");
    localStringBuilder.append(", ");
    localae.bZx[5] = "roomflag";
    localae.gfA.put("roomflag", "INTEGER");
    localStringBuilder.append(" roomflag INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[6] = "roomowner";
    localae.gfA.put("roomowner", "TEXT");
    localStringBuilder.append(" roomowner TEXT");
    localStringBuilder.append(", ");
    localae.bZx[7] = "roomdata";
    localae.gfA.put("roomdata", "BLOB");
    localStringBuilder.append(" roomdata BLOB");
    localStringBuilder.append(", ");
    localae.bZx[8] = "isShowname";
    localae.gfA.put("isShowname", "INTEGER");
    localStringBuilder.append(" isShowname INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[9] = "selfDisplayName";
    localae.gfA.put("selfDisplayName", "TEXT");
    localStringBuilder.append(" selfDisplayName TEXT");
    localStringBuilder.append(", ");
    localae.bZx[10] = "style";
    localae.gfA.put("style", "INTEGER");
    localStringBuilder.append(" style INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[11] = "chatroomdataflag";
    localae.gfA.put("chatroomdataflag", "INTEGER");
    localStringBuilder.append(" chatroomdataflag INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[12] = "modifytime";
    localae.gfA.put("modifytime", "LONG");
    localStringBuilder.append(" modifytime LONG");
    localae.bZx[13] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  private void a(a parama)
  {
    if (this.field_roomdata == null)
      parama = new a();
    Iterator localIterator = parama.cWo.iterator();
    while (localIterator.hasNext())
    {
      com.tencent.mm.plugin.chatroom.b.b localb = (com.tencent.mm.plugin.chatroom.b.b)localIterator.next();
      this.ggq.put(localb.bPx, localb);
    }
  }

  private void aAf()
  {
    try
    {
      this.ggo = new a().I(this.field_roomdata);
      a(this.ggo);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        this.ggo = new a();
    }
  }

  private boolean b(a parama)
  {
    return this.ggn.ns() == parama.ns();
  }

  private static int ge(String paramString)
  {
    try
    {
      int j = Integer.parseInt(paramString);
      i = j;
      return i;
    }
    catch (Exception localException)
    {
      do
        int i = 0;
      while (paramString == null);
      aa.e("MicroMsg.ChatRoomMember", "parserInt error " + paramString);
    }
    return 0;
  }

  private static a tn(String paramString)
  {
    a locala = new a();
    if (cj.hX(paramString))
      return locala;
    int i = paramString.indexOf('<');
    if (i > 0)
      paramString = paramString.substring(i);
    Map localMap = u.aL(paramString, "RoomData");
    if (localMap == null)
    {
      aa.e("MicroMsg.ChatRoomMember", "parse RoomData failed");
      return null;
    }
    int j = 0;
    while (true)
    {
      try
      {
        com.tencent.mm.plugin.chatroom.b.b localb = new com.tencent.mm.plugin.chatroom.b.b();
        if (j == 0)
        {
          localObject1 = ".RoomData.Member.$UserName";
          localObject2 = ".RoomData.Member.DisplayName";
          localObject3 = ".RoomData.Member.Flag";
          String str4 = cj.R((String)localMap.get(localObject1), "");
          if (cj.hX(str4))
            continue;
          localb.bPx = str4;
          localb.cTv = cj.R((String)localMap.get(localObject2), "");
          localb.cWs = ge((String)localMap.get(localObject3));
          locala.cWo.add(localb);
          j++;
          continue;
        }
        if (j != 0)
        {
          String str1 = ".RoomData.Member" + j + ".$UserName";
          String str2 = ".RoomData.Member" + j + ".DisplayName";
          String str3 = ".RoomData.Member" + j + ".Flag";
          localObject1 = str1;
          localObject2 = str2;
          localObject3 = str3;
          continue;
          locala.type = ge((String)localMap.get(".RoomData.Type"));
          locala.status = ge((String)localMap.get(".RoomData.Status"));
          locala.yx = ge((String)localMap.get(".RoomData.MaxCount"));
          locala.cWp = cj.R((String)localMap.get(".RoomData.ExtInfo.Upgrader"), "");
          return locala;
        }
      }
      catch (Exception localException)
      {
        return locala;
      }
      Object localObject1 = null;
      Object localObject3 = null;
      Object localObject2 = null;
    }
  }

  public static List tp(String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    if (cj.hX(paramString))
      return localLinkedList;
    String[] arrayOfString = paramString.split(";");
    for (int i = 0; i < arrayOfString.length; i++)
      localLinkedList.add(arrayOfString[i]);
    return localLinkedList;
  }

  public final b a(String paramString, a parama, boolean paramBoolean)
  {
    this.field_modifytime = System.currentTimeMillis();
    Object localObject1;
    Object localObject2;
    if (!paramBoolean)
    {
      localObject1 = null;
      Iterator localIterator = parama.cWo.iterator();
      if (localIterator.hasNext())
      {
        localObject2 = (com.tencent.mm.plugin.chatroom.b.b)localIterator.next();
        if ((((com.tencent.mm.plugin.chatroom.b.b)localObject2).bPx == null) || (!((com.tencent.mm.plugin.chatroom.b.b)localObject2).bPx.equals(paramString)))
          break label203;
      }
    }
    while (true)
    {
      localObject1 = localObject2;
      break;
      if (localObject1 != null)
      {
        this.field_selfDisplayName = localObject1.cTv;
        this.field_isShowname = (0x1 & localObject1.cWs);
      }
      for (int i = localObject1.cWs; ; i = 0)
      {
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = this.field_selfDisplayName;
        arrayOfObject[1] = Integer.valueOf(this.field_chatroomdataflag);
        arrayOfObject[2] = Integer.valueOf(i);
        aa.e("MicroMsg.ChatRoomMember", "displayName[%s] roomFlag[%d] flag[%d]", arrayOfObject);
        parama.bOY = (0xFFFFFFFD & parama.bOY | i & 0x2);
        this.field_chatroomdataflag = parama.bOY;
        try
        {
          this.field_roomdata = parama.toByteArray();
          this.ggo = parama;
          label185: a(parama);
          return this;
        }
        catch (Exception localException)
        {
          break label185;
        }
      }
      label203: localObject2 = localObject1;
    }
  }

  public final List aAe()
  {
    if ((this.ggp == null) || (this.ggp.size() == 0))
      this.ggp = tp(this.field_memberlist);
    return this.ggp;
  }

  public final int aAg()
  {
    if (b(this.ggo))
      aAf();
    return this.ggo.cWq;
  }

  public final boolean aAh()
  {
    if (b(this.ggo))
      aAf();
    return this.ggo.cWq < this.ggo.cWr;
  }

  public final int aAi()
  {
    return this.field_chatroomdataflag;
  }

  public final int aAj()
  {
    if (b(this.ggo))
      aAf();
    return this.ggo.yx;
  }

  public final boolean aAk()
  {
    return this.field_isShowname > 0;
  }

  public final boolean aAl()
  {
    return (0x1 & this.field_roomflag) == 0;
  }

  public final b aAm()
  {
    this.field_roomflag = 1;
    return this;
  }

  public final b aR(String paramString1, String paramString2)
  {
    return a(paramString1, tn(paramString2), false);
  }

  public final b aq(List paramList)
  {
    String str;
    if ((paramList == null) || (paramList.size() == 0))
      str = "";
    while (true)
    {
      this.field_memberlist = str;
      return this;
      str = "";
      for (int i = 0; i < paramList.size(); i++)
      {
        str = str + (String)paramList.get(i);
        if (i < -1 + paramList.size())
          str = str + ";";
      }
    }
  }

  public final void bW(int paramInt)
  {
    this.field_chatroomdataflag = (0xFFFFFFFD & this.ggo.bOY | paramInt & 0x2);
  }

  public final b cS(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      this.field_isShowname = i;
      return this;
    }
  }

  public final String cu(String paramString)
  {
    com.tencent.mm.plugin.chatroom.b.b localb = tm(paramString);
    if (localb == null)
      return "";
    return cj.R(localb.cTv, "");
  }

  public final void e(String paramString, List paramList)
  {
    if (b(this.ggo))
      aAf();
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      cf localcf = (cf)localIterator1.next();
      if (this.ggq.containsKey(localcf.eBo))
      {
        com.tencent.mm.plugin.chatroom.b.b localb = (com.tencent.mm.plugin.chatroom.b.b)this.ggq.get(localcf.eBo);
        localb.cTv = localcf.fDf;
        localb.cWs = localcf.fDi;
      }
    }
    this.ggo.cWo.clear();
    Iterator localIterator2 = this.ggq.keySet().iterator();
    while (localIterator2.hasNext())
    {
      String str = (String)localIterator2.next();
      this.ggo.cWo.add(this.ggq.get(str));
    }
    a(paramString, this.ggo, false);
  }

  public final void lO(int paramInt)
  {
    if (b(this.ggo))
      aAf();
    this.ggo.cWq = paramInt;
    try
    {
      this.field_roomdata = this.ggo.toByteArray();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected final ae qE()
  {
    return cfX;
  }

  public final com.tencent.mm.plugin.chatroom.b.b tm(String paramString)
  {
    if (this.ggq.size() <= 0)
      aAf();
    if (this.ggq.containsKey(paramString))
      return (com.tencent.mm.plugin.chatroom.b.b)this.ggq.get(paramString);
    return null;
  }

  public final b to(String paramString)
  {
    this.field_chatroomname = paramString;
    return this;
  }

  public final b tq(String paramString)
  {
    this.field_displayname = paramString;
    return this;
  }

  public final b tr(String paramString)
  {
    this.field_roomowner = paramString;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.b
 * JD-Core Version:    0.6.2
 */