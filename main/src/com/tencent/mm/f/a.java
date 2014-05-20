package com.tencent.mm.f;

import android.database.Cursor;
import com.tencent.mm.a.j;
import com.tencent.mm.c.b.f;
import com.tencent.mm.sdk.e.ae;
import com.tencent.mm.sdk.platformtools.cj;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

public class a extends f
{
  public static ae cfX = localae;
  private static Map cfZ = new HashMap();
  private static Map cga = new HashMap();
  public long cfY;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[18];
    localae.bZx = new String[19];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "username";
    localae.gfA.put("username", "TEXT");
    localStringBuilder.append(" username TEXT default ''  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "username";
    localae.bZx[1] = "alias";
    localae.gfA.put("alias", "TEXT");
    localStringBuilder.append(" alias TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[2] = "conRemark";
    localae.gfA.put("conRemark", "TEXT");
    localStringBuilder.append(" conRemark TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[3] = "domainList";
    localae.gfA.put("domainList", "TEXT");
    localStringBuilder.append(" domainList TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[4] = "nickname";
    localae.gfA.put("nickname", "TEXT");
    localStringBuilder.append(" nickname TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[5] = "pyInitial";
    localae.gfA.put("pyInitial", "TEXT");
    localStringBuilder.append(" pyInitial TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[6] = "quanPin";
    localae.gfA.put("quanPin", "TEXT");
    localStringBuilder.append(" quanPin TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[7] = "showHead";
    localae.gfA.put("showHead", "INTEGER");
    localStringBuilder.append(" showHead INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[8] = "type";
    localae.gfA.put("type", "INTEGER");
    localStringBuilder.append(" type INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[9] = "weiboFlag";
    localae.gfA.put("weiboFlag", "INTEGER");
    localStringBuilder.append(" weiboFlag INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[10] = "weiboNickname";
    localae.gfA.put("weiboNickname", "TEXT");
    localStringBuilder.append(" weiboNickname TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[11] = "conRemarkPYFull";
    localae.gfA.put("conRemarkPYFull", "TEXT");
    localStringBuilder.append(" conRemarkPYFull TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[12] = "conRemarkPYShort";
    localae.gfA.put("conRemarkPYShort", "TEXT");
    localStringBuilder.append(" conRemarkPYShort TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[13] = "lvbuff";
    localae.gfA.put("lvbuff", "BLOB");
    localStringBuilder.append(" lvbuff BLOB");
    localStringBuilder.append(", ");
    localae.bZx[14] = "verifyFlag";
    localae.gfA.put("verifyFlag", "INTEGER");
    localStringBuilder.append(" verifyFlag INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[15] = "encryptUsername";
    localae.gfA.put("encryptUsername", "TEXT");
    localStringBuilder.append(" encryptUsername TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[16] = "chatroomFlag";
    localae.gfA.put("chatroomFlag", "INTEGER");
    localStringBuilder.append(" chatroomFlag INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[17] = "deleteFlag";
    localae.gfA.put("deleteFlag", "INTEGER");
    localStringBuilder.append(" deleteFlag INTEGER default '0' ");
    localae.bZx[18] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public a()
  {
    this.field_username = "";
    this.field_nickname = "";
    this.field_pyInitial = "";
    this.field_quanPin = "";
    this.field_alias = "";
    this.field_conRemark = "";
    this.field_conRemarkPYShort = "";
    this.field_conRemarkPYFull = "";
    this.field_domainList = "";
    this.field_weiboFlag = 0;
    this.field_weiboNickname = "";
    this.field_showHead = 0;
    this.field_type = 0;
    this.field_verifyFlag = 0;
    this.field_chatroomFlag = 0;
    this.bTN = 0;
    this.bUb = "";
    this.bUc = 0;
    this.uin = 0;
    this.bTQ = "";
    this.bTR = "";
    this.bTS = 0;
    this.bTT = 0;
    this.bTU = "";
    this.bTV = "";
    this.bTW = 1;
    this.bTM = 0;
    this.bTX = 0;
    this.bTY = "";
    this.bTZ = "";
    this.bUa = "";
    this.bUd = 0;
    this.bUf = "";
    this.bUe = "";
    this.bTP = 0L;
    this.bTO = "";
    this.bUg = "";
    this.bUh = 0;
    this.bUl = "";
    this.bUm = "";
    this.bUn = "";
  }

  public a(String paramString)
  {
    this();
    if (paramString == null)
      paramString = "";
    this.field_username = paramString;
  }

  public static void b(Map paramMap)
  {
    cfZ = paramMap;
  }

  public static boolean bK(int paramInt)
  {
    return (paramInt & 0x1) != 0;
  }

  public static String bs(String paramString)
  {
    if (cfZ != null)
      return (String)cfZ.get(paramString);
    return null;
  }

  public static String by(String paramString)
  {
    if (paramString == null)
      paramString = null;
    long l;
    do
    {
      do
      {
        return paramString;
        if (paramString.toLowerCase().endsWith("@t.qq.com"))
          return "@" + paramString.replace("@t.qq.com", "");
      }
      while (!paramString.toLowerCase().endsWith("@qqim"));
      paramString = paramString.replace("@qqim", "");
      l = Long.valueOf(paramString).longValue();
    }
    while (l >= 0L);
    return new j(l).toString();
  }

  public static void c(Map paramMap)
  {
    cga = paramMap;
  }

  private static boolean isLetter(char paramChar)
  {
    return ((paramChar >= 'A') && (paramChar <= 'Z')) || ((paramChar >= 'a') && (paramChar <= 'z'));
  }

  public static int qX()
  {
    return 1;
  }

  public static int qY()
  {
    return 8;
  }

  public static int qZ()
  {
    return 16;
  }

  public static int ra()
  {
    return 32;
  }

  public void bA(String paramString)
  {
    this.bTZ = paramString;
  }

  public void bB(String paramString)
  {
    this.bUa = paramString;
  }

  public final void bC(String paramString)
  {
    this.bUb = paramString;
  }

  public final void bD(String paramString)
  {
    this.bUe = paramString;
  }

  public final void bE(String paramString)
  {
    this.field_weiboNickname = paramString;
  }

  public final void bF(String paramString)
  {
    this.bTQ = paramString;
  }

  public final void bG(String paramString)
  {
    this.bTR = paramString;
  }

  public final void bH(String paramString)
  {
    this.field_conRemark = paramString;
  }

  public final void bI(String paramString)
  {
    this.field_conRemarkPYShort = paramString;
  }

  public final void bJ(String paramString)
  {
    this.field_conRemarkPYFull = paramString;
  }

  public final void bK(String paramString)
  {
    this.bTU = paramString;
  }

  public final void bL(int paramInt)
  {
    this.bTN = paramInt;
  }

  public final void bL(String paramString)
  {
    this.bTV = paramString;
  }

  public final void bM(int paramInt)
  {
    this.field_showHead = paramInt;
  }

  public final void bM(String paramString)
  {
    this.field_domainList = paramString;
  }

  public final void bN(int paramInt)
  {
    this.bTX = paramInt;
  }

  public final void bN(String paramString)
  {
    this.bUf = paramString;
  }

  public final void bO(int paramInt)
  {
    this.bUc = paramInt;
  }

  public void bO(String paramString)
  {
    this.bUg = paramString;
  }

  public final void bP(int paramInt)
  {
    this.field_weiboFlag = paramInt;
  }

  public final void bQ(int paramInt)
  {
    this.uin = paramInt;
  }

  public final void bR(int paramInt)
  {
    this.bTS = paramInt;
  }

  public final void bS(int paramInt)
  {
    this.bTT = paramInt;
  }

  public final void bT(int paramInt)
  {
    this.bTW = paramInt;
  }

  public final void bU(int paramInt)
  {
    this.bTM = paramInt;
  }

  public final void bV(int paramInt)
  {
    this.field_verifyFlag = paramInt;
  }

  public final void bW(int paramInt)
  {
    this.field_chatroomFlag = (0xFFFFFFFE & this.field_chatroomFlag | paramInt & 0x1);
  }

  public final void bX(int paramInt)
  {
    this.bUh = paramInt;
  }

  public final void bt(String paramString)
  {
    this.field_nickname = paramString;
  }

  public final void bu(String paramString)
  {
    this.bTO = paramString;
  }

  public final void bv(String paramString)
  {
    this.field_pyInitial = paramString;
  }

  public final void bw(String paramString)
  {
    this.field_quanPin = paramString;
  }

  public final void bx(String paramString)
  {
    this.field_alias = paramString;
  }

  public final void bz(String paramString)
  {
    this.bTY = paramString;
  }

  public void convertFrom(Cursor paramCursor)
  {
    super.convertFrom(paramCursor);
    this.cfY = this.gfy;
    this.field_lvbuff = null;
  }

  public final int getSource()
  {
    return this.bUd;
  }

  public final int getType()
  {
    return this.field_type;
  }

  public final String getUsername()
  {
    return this.field_username;
  }

  public final boolean isHidden()
  {
    return (0x20 & this.field_type) != 0;
  }

  public final String kn()
  {
    return this.field_nickname;
  }

  public final void n(long paramLong)
  {
    this.bTP = paramLong;
  }

  public final ae qE()
  {
    return cfX;
  }

  public final int qF()
  {
    int i = 32;
    if ((this.field_conRemarkPYShort != null) && (!this.field_conRemarkPYShort.equals("")))
    {
      i = this.field_conRemarkPYShort.charAt(0);
      if ((i < 97) || (i > 122))
        break label234;
      i = (char)(i - 32);
    }
    label234: 
    while ((i >= 65) && (i <= 90))
    {
      return i;
      if ((this.field_conRemarkPYFull != null) && (!this.field_conRemarkPYFull.equals("")))
      {
        i = this.field_conRemarkPYFull.charAt(0);
        break;
      }
      if ((this.field_pyInitial != null) && (!this.field_pyInitial.equals("")))
      {
        i = this.field_pyInitial.charAt(0);
        break;
      }
      if ((this.field_quanPin != null) && (!this.field_quanPin.equals("")))
      {
        i = this.field_quanPin.charAt(0);
        break;
      }
      if ((this.field_nickname != null) && (!this.field_nickname.equals("")) && (isLetter(this.field_nickname.charAt(0))))
      {
        i = this.field_nickname.charAt(0);
        break;
      }
      if ((this.field_username == null) || (this.field_username.equals("")) || (!isLetter(this.field_username.charAt(0))))
        break;
      i = this.field_username.charAt(0);
      break;
    }
    return 123;
  }

  public final void qG()
  {
    this.field_type = 0;
  }

  public final void qH()
  {
    this.field_type = (0x4 | this.field_type);
  }

  public final void qI()
  {
    this.field_type = (0x1 | this.field_type);
  }

  public final void qJ()
  {
    this.field_type = (0xFFFFFFFE & this.field_type);
  }

  public final void qK()
  {
    this.field_type = (0x8 | this.field_type);
  }

  public final void qL()
  {
    this.field_type = (0xFFFFFFF7 & this.field_type);
  }

  public final void qM()
  {
    this.field_type = (0x2 | this.field_type);
  }

  public final void qN()
  {
    this.field_type = (0xFFFFFFFD & this.field_type);
  }

  public final void qO()
  {
    this.field_type = (0xFFFFF7FF & this.field_type);
  }

  public final void qP()
  {
    this.field_type = (0x20 | this.field_type);
  }

  public final void qQ()
  {
    this.field_type = (0xFFFFFFDF & this.field_type);
  }

  public final void qR()
  {
    this.field_type = (0x40 | this.field_type);
  }

  public final void qS()
  {
    this.field_type = (0xFFFFFFBF & this.field_type);
  }

  public final void qT()
  {
    this.field_type = (0x200 | this.field_type);
  }

  public final void qU()
  {
    this.field_type = (0xFFFFFDFF & this.field_type);
  }

  public final void qV()
  {
    this.field_type = (0x100 | this.field_type);
  }

  public final void qW()
  {
    this.field_type = (0xFFFFFEFF & this.field_type);
  }

  public final int rA()
  {
    return this.bTX;
  }

  public final String rB()
  {
    return this.bTY;
  }

  public String rC()
  {
    return this.bTZ;
  }

  public String rD()
  {
    return this.bUa;
  }

  public final String rE()
  {
    return this.bUb;
  }

  public final int rF()
  {
    return this.bUc;
  }

  public final String rG()
  {
    return this.bUe;
  }

  public final int rH()
  {
    return this.field_weiboFlag;
  }

  public final String rI()
  {
    return this.field_weiboNickname;
  }

  public final int rJ()
  {
    return this.field_verifyFlag;
  }

  public final String rK()
  {
    return this.bUf;
  }

  public final String rL()
  {
    return this.bUg;
  }

  public final int rM()
  {
    return this.bUh;
  }

  public final boolean rb()
  {
    return bK(this.field_type);
  }

  public final boolean rc()
  {
    return (0x2 & this.field_type) != 0;
  }

  public final boolean rd()
  {
    return (0x8 & this.field_type) != 0;
  }

  public final boolean re()
  {
    return (0x40 & this.field_type) != 0;
  }

  public final boolean rf()
  {
    return (0x200 & this.field_type) != 0;
  }

  public final boolean rg()
  {
    return (0x400 & this.field_type) == 0;
  }

  public final boolean rh()
  {
    return (0x100 & this.field_type) != 0;
  }

  public final boolean ri()
  {
    return (0x800 & this.field_type) != 0;
  }

  public final int rj()
  {
    return (int)this.cfY;
  }

  public final int rk()
  {
    return this.bTN;
  }

  public final int rl()
  {
    return this.field_showHead;
  }

  public final String rm()
  {
    return this.bTO;
  }

  public final String rn()
  {
    if ((this.field_pyInitial == null) || (this.field_pyInitial.length() < 0))
      return ro();
    return this.field_pyInitial;
  }

  public final String ro()
  {
    if ((this.field_quanPin == null) || (this.field_quanPin.length() < 0))
      return this.field_nickname;
    return this.field_quanPin;
  }

  public final String rp()
  {
    String str = (String)cga.get(this.field_username);
    if (str == null)
      str = this.field_alias;
    return str;
  }

  public final String rq()
  {
    String str = (String)cfZ.get(this.field_username);
    if (str != null)
      return str;
    if ((this.field_nickname == null) || (this.field_nickname.length() <= 0))
      return rs();
    return this.field_nickname;
  }

  public final String rr()
  {
    if ((this.field_conRemark != null) && (!this.field_conRemark.trim().equals("")))
      return this.field_conRemark;
    return rq();
  }

  public final String rs()
  {
    String str = rp();
    if (!cj.hX(str));
    do
    {
      return str;
      str = by(this.field_username);
    }
    while ((str != null) && (str.length() != 0));
    return this.field_username;
  }

  public final int rt()
  {
    return this.bTT;
  }

  public final String ru()
  {
    return this.field_conRemark;
  }

  public final String rv()
  {
    return this.field_conRemarkPYShort;
  }

  public final String rw()
  {
    return this.field_conRemarkPYFull;
  }

  public final String rx()
  {
    return this.field_domainList;
  }

  public final int ry()
  {
    return this.bTW;
  }

  public final int rz()
  {
    return this.bTM;
  }

  public final void setSource(int paramInt)
  {
    this.bUd = paramInt;
  }

  public final void setType(int paramInt)
  {
    this.field_type = paramInt;
  }

  public final void setUsername(String paramString)
  {
    this.field_username = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.f.a
 * JD-Core Version:    0.6.2
 */