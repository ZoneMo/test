package com.tencent.mm.storage;

import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class am
{
  private int bPb = 0;
  private double dto = 0.0D;
  private double dtp = 0.0D;
  private String dzw = "";
  private String ghJ = "";
  private String ghS = "";
  private String ghT = null;
  private String ghU = null;
  private String ghV = null;
  private String ghW = "";
  private String label = "";

  public static am uR(String paramString)
  {
    am localam = new am();
    Map localMap = u.aL(paramString, "msg");
    if (localMap != null)
    {
      localam.ghJ = ((String)localMap.get(".msg.location.$fromusername"));
      localam.dto = cj.sW((String)localMap.get(".msg.location.$x"));
      localam.dtp = cj.sW((String)localMap.get(".msg.location.$y"));
      localam.label = ((String)localMap.get(".msg.location.$label"));
      localam.ghS = ((String)localMap.get(".msg.location.$maptype"));
      localam.bPb = Integer.valueOf((String)localMap.get(".msg.location.$scale")).intValue();
      localam.ghV = ((String)localMap.get(".msg.location.$localLocationen"));
      localam.ghT = ((String)localMap.get(".msg.location.$localLocationcn"));
      localam.ghU = ((String)localMap.get(".msg.location.$localLocationtw"));
      localam.dzw = ((String)localMap.get(".msg.location.$poiname"));
      localam.ghW = ((String)localMap.get(".msg.location.$infourl"));
    }
    return localam;
  }

  public final String aCC()
  {
    return this.dzw;
  }

  public final boolean aCD()
  {
    return (this.dzw != null) && (!this.dzw.equals(""));
  }

  public final double aCE()
  {
    return this.dto;
  }

  public final double aCF()
  {
    return this.dtp;
  }

  public final String aCG()
  {
    return this.ghW;
  }

  public final int axF()
  {
    return this.bPb;
  }

  public final String e(boolean paramBoolean, String paramString)
  {
    if ((this.ghV == null) || (this.ghV.equals("")))
      this.ghV = "";
    if ((this.ghU == null) || (this.ghU.equals("")))
      this.ghV = "";
    if ((this.ghT == null) || (this.ghT.equals("")))
      this.ghT = "";
    if ((this.ghJ == null) || (this.ghJ.equals("")))
      this.ghJ = "";
    if ((this.label == null) || (this.label.equals("")))
      this.label = "";
    if ((this.ghS == null) || (this.ghS.equals("")))
      this.ghS = "";
    String str = "<msg><location x=\"" + this.dto + "\" y=\"" + this.dtp + "\" scale=\"" + this.bPb + "\" label=\"" + this.label + "\" maptype=\"" + this.ghS + "\"  fromusername=\"" + this.ghJ + "\" /></msg>";
    if ((paramBoolean) && (!paramString.equals("")))
      str = paramString + ":\n" + str;
    return str;
  }

  public final String kI()
  {
    return this.label;
  }

  public final void uS(String paramString)
  {
    this.label = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.am
 * JD-Core Version:    0.6.2
 */