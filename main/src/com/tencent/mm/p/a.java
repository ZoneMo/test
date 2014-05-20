package com.tencent.mm.p;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.ae;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class a extends com.tencent.mm.c.b.d
{
  protected static ae cfX = localae;
  private c cna;
  private List cnb;
  private f cnc;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[13];
    localae.bZx = new String[14];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "username";
    localae.gfA.put("username", "TEXT");
    localStringBuilder.append(" username TEXT PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "username";
    localae.bZx[1] = "brandList";
    localae.gfA.put("brandList", "TEXT");
    localStringBuilder.append(" brandList TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[2] = "brandListVersion";
    localae.gfA.put("brandListVersion", "TEXT");
    localStringBuilder.append(" brandListVersion TEXT");
    localStringBuilder.append(", ");
    localae.bZx[3] = "brandListContent";
    localae.gfA.put("brandListContent", "TEXT");
    localStringBuilder.append(" brandListContent TEXT");
    localStringBuilder.append(", ");
    localae.bZx[4] = "brandFlag";
    localae.gfA.put("brandFlag", "INTEGER");
    localStringBuilder.append(" brandFlag INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[5] = "extInfo";
    localae.gfA.put("extInfo", "TEXT");
    localStringBuilder.append(" extInfo TEXT");
    localStringBuilder.append(", ");
    localae.bZx[6] = "brandInfo";
    localae.gfA.put("brandInfo", "TEXT");
    localStringBuilder.append(" brandInfo TEXT");
    localStringBuilder.append(", ");
    localae.bZx[7] = "brandIconURL";
    localae.gfA.put("brandIconURL", "TEXT");
    localStringBuilder.append(" brandIconURL TEXT");
    localStringBuilder.append(", ");
    localae.bZx[8] = "updateTime";
    localae.gfA.put("updateTime", "LONG");
    localStringBuilder.append(" updateTime LONG");
    localStringBuilder.append(", ");
    localae.bZx[9] = "hadAlert";
    localae.gfA.put("hadAlert", "INTEGER");
    localStringBuilder.append(" hadAlert INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[10] = "acceptType";
    localae.gfA.put("acceptType", "INTEGER");
    localStringBuilder.append(" acceptType INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[11] = "type";
    localae.gfA.put("type", "INTEGER");
    localStringBuilder.append(" type INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[12] = "status";
    localae.gfA.put("status", "INTEGER");
    localStringBuilder.append(" status INTEGER default '0' ");
    localae.bZx[13] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public final c a(d paramd)
  {
    if (this.cna == null)
      if (!cj.hW(this.field_brandListContent).equals(""))
        break label60;
    c localc1;
    c localc2;
    label60: for (String str1 = this.field_brandList; ; str1 = this.field_brandListContent)
    {
      localc1 = new c();
      if ((str1 != null) && (str1.length() > 0))
        break;
      localc2 = localc1;
      this.cna = localc2;
      return this.cna;
    }
    Map localMap = u.aL(str1, "brandlist");
    int i;
    if (localMap != null)
      i = 0;
    while (true)
    {
      label111: int j;
      if (i < 100000)
      {
        StringBuilder localStringBuilder = new StringBuilder(".brandlist.brand");
        Object localObject;
        String str3;
        e locale;
        if (i == 0)
        {
          localObject = "";
          String str2 = localObject;
          str3 = (String)localMap.get(str2 + ".username");
          j = i + 1;
          if (str3 == null)
            break label425;
          locale = new e();
          locale.username = str3;
          locale.bPk = ((String)localMap.get(str2 + ".nickname"));
          locale.wN = ((String)localMap.get(str2 + ".alias"));
          locale.cnh = ((String)localMap.get(str2 + ".iconurl"));
          if (cj.getInt((String)localMap.get(str2 + ".Hidden"), 0) == 0)
            break label400;
        }
        label400: for (boolean bool = true; ; bool = false)
        {
          locale.cni = bool;
          localc1.cng.put(str3, locale);
          if ((paramd != null) && (!paramd.eB(str3)))
            break label431;
          if (!locale.cni)
            break label406;
          localc1.cnf.add(locale);
          i = j;
          break;
          localObject = Integer.valueOf(i);
          break label111;
        }
        label406: localc1.cne.add(locale);
        i = j;
      }
      else
      {
        label425: localc2 = localc1;
        break;
        label431: i = j;
      }
    }
  }

  public final void convertFrom(Cursor paramCursor)
  {
    super.convertFrom(paramCursor);
  }

  public final ContentValues oa()
  {
    return super.oa();
  }

  protected final ae qE()
  {
    return cfX;
  }

  public final boolean xA()
  {
    return System.currentTimeMillis() - this.field_updateTime > 86400000L;
  }

  public final void xB()
  {
    xu();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.field_acceptType);
    arrayOfObject[1] = this.field_extInfo;
    aa.d("MicroMsg.BizInfo", "update accept type %d %s", arrayOfObject);
    this.field_acceptType = this.cnc.cnv;
    this.field_type = xu().cny;
  }

  public final boolean xC()
  {
    xu();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.field_username;
    arrayOfObject[1] = Boolean.valueOf(this.cnc.cns);
    aa.d("MicroMsg.BizInfo", "is report location, user %s %B", arrayOfObject);
    return this.cnc.cns;
  }

  public final boolean xD()
  {
    xu();
    return this.cnc.cnx == 1;
  }

  public final boolean xE()
  {
    return this.field_type == 1;
  }

  public final List xF()
  {
    if (this.cnb != null)
      return this.cnb;
    this.cnb = new LinkedList();
    if ((this.field_brandInfo == null) || (this.field_brandInfo.length() == 0))
      return this.cnb;
    try
    {
      JSONArray localJSONArray = new JSONObject(this.field_brandInfo).optJSONArray("urls");
      for (int i = 0; i < localJSONArray.length(); i++)
      {
        b localb = new b();
        JSONObject localJSONObject = localJSONArray.optJSONObject(i);
        localb.title = localJSONObject.optString("title");
        localb.url = localJSONObject.optString("url");
        localb.cnd = localJSONObject.optString("title_key");
        localb.description = localJSONObject.optString("description");
        this.cnb.add(localb);
      }
    }
    catch (Exception localException)
    {
    }
    return this.cnb;
  }

  public final f xu()
  {
    if (this.cnc == null)
      this.cnc = f.eD(this.field_extInfo);
    return this.cnc;
  }

  public final String xv()
  {
    Map localMap = u.aL(cj.hW(this.field_brandList), "brandlist");
    if (localMap != null)
      return cj.hW((String)localMap.get(".brandlist.$ver"));
    return "";
  }

  public final boolean xw()
  {
    Map localMap = u.aL(cj.hW(this.field_brandList), "brandlist");
    if (localMap != null);
    for (int i = cj.getInt((String)localMap.get(".brandlist.$count"), 0); (i == 0) && (cj.hW(this.field_brandListVersion).length() <= 0); i = 0)
      return false;
    return !cj.hW(this.field_brandListVersion).equals(xv());
  }

  public final boolean xx()
  {
    return (0x1 & this.field_brandFlag) == 0;
  }

  public final boolean xy()
  {
    return (0x2 & this.field_brandFlag) == 0;
  }

  public final boolean xz()
  {
    return (0x4 & this.field_brandFlag) != 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.a
 * JD-Core Version:    0.6.2
 */