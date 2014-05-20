package com.tencent.mm.storage;

import android.text.TextUtils;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class al
{
  private int bLN = 0;
  private int bTN;
  private String bTY;
  private String bTZ;
  private String bUa;
  private String bUf = "";
  private String bUg = "";
  private String cif = "";
  private String crH = "";
  private String crI = "";
  private String crJ = "";
  private String crM = "";
  private String diH = "";
  private String frH = "";
  private String ghJ = "";
  private int ghK = 0;
  private String ghL = "";
  private String ghM = "";
  private long ghN = 0L;
  private int ghO = 0;
  private String ghP = "";
  private String ghQ = "";
  private String ghR = "";
  private String wN = "";

  public static al uQ(String paramString)
  {
    al localal = new al();
    Map localMap = u.aL(paramString, "msg");
    if (localMap != null);
    try
    {
      if (localMap.get(".msg.$fromusername") == null)
      {
        localal.ghJ = ((String)localMap.get(".msg.$username"));
        if (localMap.get(".msg.$fromnickname") != null)
          break label576;
        localal.crH = ((String)localMap.get(".msg.$nickname"));
        label71: localal.wN = ((String)localMap.get(".msg.$alias"));
        localal.cif = ((String)localMap.get(".msg.$fullpy"));
        localal.crI = ((String)localMap.get(".msg.$shortpy"));
        localal.diH = ((String)localMap.get(".msg.$source"));
        localal.ghK = Integer.valueOf((String)localMap.get(".msg.$imagestatus")).intValue();
        localal.bLN = Integer.valueOf((String)localMap.get(".msg.$scene")).intValue();
        localal.ghL = ((String)localMap.get(".msg.$mobileidentify"));
        localal.ghM = ((String)localMap.get(".msg.$mobilelongidentify"));
        if ((localMap.get(".msg.$qqnum") != null) && (((String)localMap.get(".msg.$qqnum")).length() > 0))
          localal.ghN = Long.valueOf((String)localMap.get(".msg.$qqnum")).longValue();
        localal.bTY = ((String)localMap.get(".msg.$sign"));
        if ((localMap.get(".msg.$sex") != null) && (((String)localMap.get(".msg.$sex")).length() > 0))
          localal.bTN = Integer.valueOf((String)localMap.get(".msg.$sex")).intValue();
        localal.bUa = ((String)localMap.get(".msg.$city"));
        localal.bTZ = ((String)localMap.get(".msg.$province"));
        localal.crJ = ((String)localMap.get(".msg.$qqnickname"));
        localal.crM = ((String)localMap.get(".msg.$qqremark"));
        if (!TextUtils.isEmpty((CharSequence)localMap.get(".msg.$certflag")))
          break label594;
      }
      label576: label594: for (String str = "0"; ; str = (String)localMap.get(".msg.$certflag"))
      {
        localal.ghO = Integer.valueOf(str).intValue();
        localal.bUf = cj.hW((String)localMap.get(".msg.$certinfo"));
        localal.ghP = cj.hW((String)localMap.get(".msg.$brandIconUrl"));
        localal.bUg = cj.hW((String)localMap.get(".msg.$regionCode"));
        localal.ghQ = cj.hW((String)localMap.get(".msg.$bigheadimgurl"));
        localal.ghR = cj.hW((String)localMap.get(".msg.$smallheadimgurl"));
        localal.frH = cj.hW((String)localMap.get(".msg.$googlecontact"));
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = localal.ghJ;
        arrayOfObject[1] = localal.ghQ;
        arrayOfObject[2] = localal.ghR;
        aa.e("MicroMsg.MsgInfo", "dkavatar FriendContent user:[%s] big:[%s] sm:[%s]", arrayOfObject);
        return localal;
        localal.ghJ = ((String)localMap.get(".msg.$fromusername"));
        break;
        localal.crH = ((String)localMap.get(".msg.$fromnickname"));
        break label71;
      }
      return localal;
    }
    catch (Exception localException)
    {
    }
    return localal;
  }

  public final String Ah()
  {
    return this.crJ;
  }

  public final String Ai()
  {
    return this.crM;
  }

  public final int Gf()
  {
    return this.bLN;
  }

  public final String aCA()
  {
    return this.ghP;
  }

  public final String aCB()
  {
    return this.frH;
  }

  public final String aCs()
  {
    return this.ghQ;
  }

  public final String aCt()
  {
    return this.ghR;
  }

  public final String aCu()
  {
    return this.ghJ;
  }

  public final int aCv()
  {
    return this.ghK;
  }

  public final String aCw()
  {
    return this.ghL;
  }

  public final long aCx()
  {
    return this.ghN;
  }

  public final String aCy()
  {
    if ((this.crM != null) && (this.crM.length() > 0))
      return this.crM;
    if ((this.crJ != null) && (this.crJ.length() > 0))
      return this.crJ;
    return Long.toString(this.ghN);
  }

  public final String aCz()
  {
    return this.ghM;
  }

  public final String getDisplayName()
  {
    if (!TextUtils.isEmpty(this.crH))
      return this.crH;
    if (!TextUtils.isEmpty(this.wN))
      return this.wN;
    aa.aM("MicroMsg.MsgInfo", "username is nullOrNil");
    return cj.hW(this.ghJ);
  }

  public final String kn()
  {
    return this.crH;
  }

  public final String rB()
  {
    return this.bTY;
  }

  public final String rC()
  {
    String[] arrayOfString;
    if (!cj.hX(this.bUg))
    {
      arrayOfString = this.bUg.split("_");
      if (arrayOfString.length > 0)
      {
        if ((arrayOfString.length <= 2) || (!RegionCodeDecoder.vw(arrayOfString[0])))
          break label62;
        RegionCodeDecoder.aDe();
      }
    }
    for (this.bTZ = RegionCodeDecoder.aW(arrayOfString[0], arrayOfString[1]); ; this.bTZ = RegionCodeDecoder.vy(arrayOfString[0]))
    {
      return this.bTZ;
      label62: RegionCodeDecoder.aDe();
    }
  }

  public final String rD()
  {
    String[] arrayOfString;
    if (!cj.hX(this.bUg))
    {
      arrayOfString = this.bUg.split("_");
      if (arrayOfString.length > 0)
      {
        if (arrayOfString.length <= 2)
          break label56;
        RegionCodeDecoder.aDe();
        this.bUa = RegionCodeDecoder.x(arrayOfString[0], arrayOfString[1], arrayOfString[2]);
      }
    }
    while (true)
    {
      return this.bUa;
      label56: if (arrayOfString.length == 2)
      {
        RegionCodeDecoder.aDe();
        this.bUa = RegionCodeDecoder.aW(arrayOfString[0], arrayOfString[1]);
      }
      else
      {
        this.bUa = "";
      }
    }
  }

  public final int rJ()
  {
    return this.ghO;
  }

  public final String rK()
  {
    return this.bUf;
  }

  public final int rk()
  {
    return this.bTN;
  }

  public final String rn()
  {
    return this.crI;
  }

  public final String ro()
  {
    return this.cif;
  }

  public final String rp()
  {
    return this.wN;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.al
 * JD-Core Version:    0.6.2
 */