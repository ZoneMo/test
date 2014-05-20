package com.tencent.mm.plugin.wallet.protocal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.sdk.platformtools.cj;

public class Authen
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new c();
  public String XX;
  public int bOY;
  public String bTQ;
  public String bTZ;
  public String bUa;
  public PayInfo dHN = new PayInfo();
  public String dHm;
  public String eWR;
  public int eWY;
  public String eWa;
  public String eXN;
  public String eXd;
  public String eXo;
  public String etE;
  public int fdd = 0;
  public String fde;
  public String fdf;
  public String fdg;
  public String fdh;
  public String fdi;
  public String fdj;
  public boolean fdk = false;
  public String fdl;
  public String fdm;
  public String fdn;

  public Authen()
  {
  }

  public Authen(Parcel paramParcel)
  {
    this.bOY = paramParcel.readInt();
    this.fde = paramParcel.readString();
    this.eXo = paramParcel.readString();
    this.eXd = paramParcel.readString();
    this.fdf = paramParcel.readString();
    this.fdg = paramParcel.readString();
    this.eWY = paramParcel.readInt();
    this.fdh = paramParcel.readString();
    this.fdi = paramParcel.readString();
    this.eWR = paramParcel.readString();
    this.fdj = paramParcel.readString();
    this.etE = paramParcel.readString();
    if (paramParcel.readInt() == i);
    while (true)
    {
      this.fdk = i;
      this.fdl = paramParcel.readString();
      this.fdm = paramParcel.readString();
      this.dHm = paramParcel.readString();
      this.bTZ = paramParcel.readString();
      this.bUa = paramParcel.readString();
      this.XX = paramParcel.readString();
      this.fdn = paramParcel.readString();
      this.eWa = paramParcel.readString();
      this.bTQ = paramParcel.readString();
      this.eXN = paramParcel.readString();
      return;
      i = 0;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.bOY);
    paramParcel.writeString(cj.R(this.fde, ""));
    paramParcel.writeString(cj.R(this.eXo, ""));
    paramParcel.writeString(cj.R(this.eXd, ""));
    paramParcel.writeString(cj.R(this.fdf, ""));
    paramParcel.writeString(cj.R(this.fdg, ""));
    paramParcel.writeInt(this.eWY);
    paramParcel.writeString(cj.R(this.fdh, ""));
    paramParcel.writeString(cj.R(this.fdi, ""));
    paramParcel.writeString(cj.R(this.eWR, ""));
    paramParcel.writeString(cj.R(this.fdj, ""));
    paramParcel.writeString(cj.R(this.etE, ""));
    if (this.fdk);
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeString(cj.R(this.fdl, ""));
      paramParcel.writeString(cj.R(this.fdm, ""));
      paramParcel.writeString(cj.R(this.dHm, ""));
      paramParcel.writeString(cj.R(this.bTZ, ""));
      paramParcel.writeString(cj.R(this.bUa, ""));
      paramParcel.writeString(cj.R(this.XX, ""));
      paramParcel.writeString(cj.R(this.fdn, ""));
      paramParcel.writeString(cj.R(this.eWa, ""));
      paramParcel.writeString(cj.R(this.bTQ, ""));
      paramParcel.writeString(cj.R(this.eXN, ""));
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.protocal.Authen
 * JD-Core Version:    0.6.2
 */