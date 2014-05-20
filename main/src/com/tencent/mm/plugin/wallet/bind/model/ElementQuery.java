package com.tencent.mm.plugin.wallet.bind.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class ElementQuery
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new b();
  public static String eXc = "bind_serial";
  public int eWV;
  private String eXA;
  private List eXB = null;
  public JSONObject eXb;
  public String eXd;
  public String eXe;
  public String eXf;
  public boolean eXg;
  public boolean eXh;
  public boolean eXi;
  public boolean eXj;
  public String eXk;
  public boolean eXl;
  public int eXm;
  public int eXn;
  public String eXo;
  public String eXp;
  public String eXq;
  public boolean eXr;
  public boolean eXs;
  public boolean eXt;
  public boolean eXu;
  public boolean eXv;
  public boolean eXw;
  public boolean eXx;
  public boolean eXy;
  public boolean eXz;

  public ElementQuery()
  {
  }

  public ElementQuery(Parcel paramParcel)
  {
    this.eXd = paramParcel.readString();
    this.eXe = paramParcel.readString();
    this.eXf = paramParcel.readString();
    int j;
    int k;
    label61: int m;
    label78: int n;
    label95: int i1;
    label128: int i2;
    label185: int i3;
    label202: int i4;
    label219: int i5;
    label236: int i6;
    label253: int i7;
    label270: int i8;
    label287: int i9;
    if (i == paramParcel.readInt())
    {
      j = i;
      this.eXg = j;
      if (i != paramParcel.readInt())
        break label345;
      k = i;
      this.eXh = k;
      if (i != paramParcel.readInt())
        break label351;
      m = i;
      this.eXi = m;
      if (i != paramParcel.readInt())
        break label357;
      n = i;
      this.eXj = n;
      this.eXk = paramParcel.readString();
      this.eXd = paramParcel.readString();
      if (i != paramParcel.readInt())
        break label363;
      i1 = i;
      this.eXl = i1;
      this.eXm = paramParcel.readInt();
      this.eXn = paramParcel.readInt();
      this.eXo = paramParcel.readString();
      this.eXp = paramParcel.readString();
      this.eXq = paramParcel.readString();
      if (i != paramParcel.readInt())
        break label369;
      i2 = i;
      this.eXr = i2;
      if (i != paramParcel.readInt())
        break label375;
      i3 = i;
      this.eXs = i3;
      if (i != paramParcel.readInt())
        break label381;
      i4 = i;
      this.eXt = i4;
      if (i != paramParcel.readInt())
        break label387;
      i5 = i;
      this.eXu = i5;
      if (i != paramParcel.readInt())
        break label393;
      i6 = i;
      this.eXv = i6;
      if (i != paramParcel.readInt())
        break label399;
      i7 = i;
      this.eXw = i7;
      if (i != paramParcel.readInt())
        break label405;
      i8 = i;
      this.eXy = i8;
      if (i != paramParcel.readInt())
        break label411;
      i9 = i;
      label304: this.eXx = i9;
      if (i != paramParcel.readInt())
        break label417;
    }
    while (true)
    {
      this.eXz = i;
      this.eWV = paramParcel.readInt();
      this.eXA = paramParcel.readString();
      return;
      j = 0;
      break;
      label345: k = 0;
      break label61;
      label351: m = 0;
      break label78;
      label357: n = 0;
      break label95;
      label363: i1 = 0;
      break label128;
      label369: i2 = 0;
      break label185;
      label375: i3 = 0;
      break label202;
      label381: i4 = 0;
      break label219;
      label387: i5 = 0;
      break label236;
      label393: i6 = 0;
      break label253;
      label399: i7 = 0;
      break label270;
      label405: i8 = 0;
      break label287;
      label411: i9 = 0;
      break label304;
      label417: i = 0;
    }
  }

  public final boolean anh()
  {
    return 2 == this.eXn;
  }

  public final boolean ani()
  {
    return 1 == this.eXn;
  }

  public final List anj()
  {
    if (this.eXB != null)
      return this.eXB;
    if (!cj.hX(this.eXA))
    {
      this.eXB = new ArrayList();
      String[] arrayOfString = this.eXA.split("|");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        int k = cj.getInt(arrayOfString[j], 0);
        if (k > 0)
          this.eXB.add(Integer.valueOf(k));
      }
      return this.eXB;
    }
    return null;
  }

  public int describeContents()
  {
    return 0;
  }

  public final void f(JSONObject paramJSONObject)
  {
    this.eXb = paramJSONObject;
    this.eXe = paramJSONObject.optString("bank_name");
    this.eXo = paramJSONObject.optString("bank_type");
    this.eXq = paramJSONObject.optString("bank_phone");
    this.eXn = paramJSONObject.optInt("bankacc_type", 1);
    this.eXg = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "canModifyName");
    this.eXh = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "canModifyCreID");
    this.eXl = "0".equals(paramJSONObject.optString("is_sure"));
    this.eXi = "1".equals(paramJSONObject.optString("needCVV"));
    this.eXj = "1".equals(paramJSONObject.optString("needValiDate"));
    this.eXf = paramJSONObject.optString("time_stamp");
    this.eXk = paramJSONObject.optString("uesr_name");
    this.eXp = paramJSONObject.optString("bank_flag");
    this.eXr = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "needFirstName");
    this.eXs = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "needLastName");
    this.eXt = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "needCountry");
    this.eXu = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "needArea");
    this.eXv = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "needCity");
    this.eXw = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "needAddress");
    this.eXx = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "needZip");
    this.eXy = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "needPhone");
    this.eXz = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "needEmail");
    this.eXA = paramJSONObject.optString("support_cre_type");
    this.eWV = paramJSONObject.optInt("bank_card_tag", 1);
    if (this.eWV == 1)
    {
      if (!com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "IsSaveYfq"))
      {
        this.eXm = 0;
        return;
      }
      if (com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "canReturnYfq"))
      {
        this.eXm = 4;
        return;
      }
      this.eXm = 3;
      return;
    }
    if (paramJSONObject.optInt("auth_mode") == 1)
    {
      this.eXm = 1;
      return;
    }
    this.eXm = 2;
  }

  public final boolean isError()
  {
    return "0".equals(cj.R(this.eXp, "").trim());
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(cj.R(this.eXd, ""));
    paramParcel.writeString(cj.R(this.eXe, ""));
    paramParcel.writeString(cj.R(this.eXf, ""));
    int j;
    int k;
    label67: int m;
    label83: int n;
    label99: int i1;
    label141: int i2;
    label212: int i3;
    label228: int i4;
    label244: int i5;
    label260: int i6;
    label276: int i7;
    label292: int i8;
    label308: int i9;
    if (this.eXg)
    {
      j = i;
      paramParcel.writeInt(j);
      if (!this.eXh)
        break label365;
      k = i;
      paramParcel.writeInt(k);
      if (!this.eXi)
        break label371;
      m = i;
      paramParcel.writeInt(m);
      if (!this.eXj)
        break label377;
      n = i;
      paramParcel.writeInt(n);
      paramParcel.writeString(cj.R(this.eXk, ""));
      paramParcel.writeString(cj.R(this.eXd, ""));
      if (!this.eXl)
        break label383;
      i1 = i;
      paramParcel.writeInt(i1);
      paramParcel.writeInt(this.eXm);
      paramParcel.writeInt(this.eXn);
      paramParcel.writeString(cj.R(this.eXo, ""));
      paramParcel.writeString(cj.R(this.eXp, ""));
      paramParcel.writeString(cj.R(this.eXq, ""));
      if (!this.eXr)
        break label389;
      i2 = i;
      paramParcel.writeInt(i2);
      if (!this.eXs)
        break label395;
      i3 = i;
      paramParcel.writeInt(i3);
      if (!this.eXt)
        break label401;
      i4 = i;
      paramParcel.writeInt(i4);
      if (!this.eXu)
        break label407;
      i5 = i;
      paramParcel.writeInt(i5);
      if (!this.eXv)
        break label413;
      i6 = i;
      paramParcel.writeInt(i6);
      if (!this.eXw)
        break label419;
      i7 = i;
      paramParcel.writeInt(i7);
      if (!this.eXy)
        break label425;
      i8 = i;
      paramParcel.writeInt(i8);
      if (!this.eXx)
        break label431;
      i9 = i;
      label324: paramParcel.writeInt(i9);
      if (!this.eXz)
        break label437;
    }
    while (true)
    {
      paramParcel.writeInt(i);
      paramParcel.writeInt(this.eWV);
      paramParcel.writeString(this.eXA);
      return;
      j = 0;
      break;
      label365: k = 0;
      break label67;
      label371: m = 0;
      break label83;
      label377: n = 0;
      break label99;
      label383: i1 = 0;
      break label141;
      label389: i2 = 0;
      break label212;
      label395: i3 = 0;
      break label228;
      label401: i4 = 0;
      break label244;
      label407: i5 = 0;
      break label260;
      label413: i6 = 0;
      break label276;
      label419: i7 = 0;
      break label292;
      label425: i8 = 0;
      break label308;
      label431: i9 = 0;
      break label324;
      label437: i = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.model.ElementQuery
 * JD-Core Version:    0.6.2
 */