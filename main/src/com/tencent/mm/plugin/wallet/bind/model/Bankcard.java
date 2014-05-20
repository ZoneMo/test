package com.tencent.mm.plugin.wallet.bind.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class Bankcard
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new a();
  public String bTR;
  public String dCO;
  public String eWH;
  public String eWI;
  public String eWJ;
  public double eWK;
  public double eWL;
  public double eWM;
  public double eWN;
  public String eWO;
  public String eWP;
  public String eWQ;
  public String eWR;
  public String eWS;
  public String eWT;
  public boolean eWU;
  private int eWV;
  private int eWW;
  public String eWX = null;
  public int eWY;
  public String eWZ = null;
  public boolean eXa = false;

  public Bankcard()
  {
  }

  public Bankcard(Parcel paramParcel)
  {
    this.dCO = paramParcel.readString();
    this.eWH = paramParcel.readString();
    this.eWT = paramParcel.readString();
    int j;
    if (paramParcel.readInt() == i)
    {
      j = i;
      this.eWU = j;
      if (paramParcel.readInt() != i)
        break label175;
    }
    while (true)
    {
      this.eXa = i;
      this.bTR = paramParcel.readString();
      this.eWK = paramParcel.readDouble();
      this.eWL = paramParcel.readDouble();
      this.eWM = paramParcel.readDouble();
      this.eWN = paramParcel.readDouble();
      this.eWQ = paramParcel.readString();
      this.eWJ = paramParcel.readString();
      this.eWV = paramParcel.readInt();
      this.eWW = paramParcel.readInt();
      this.eWX = paramParcel.readString();
      this.eWY = paramParcel.readInt();
      this.eWZ = paramParcel.readString();
      return;
      j = 0;
      break;
      label175: i = 0;
    }
  }

  public static boolean aH(int paramInt1, int paramInt2)
  {
    aa.d("MicroMsg.Bankcard", "supportBankcardTag : " + paramInt1 + ", bankcardTag : " + paramInt2);
    return (paramInt1 & paramInt2) > 0;
  }

  public static Bankcard e(JSONObject paramJSONObject)
  {
    Bankcard localBankcard = new Bankcard();
    try
    {
      localBankcard.dCO = paramJSONObject.getString("bank_name");
      localBankcard.eWH = paramJSONObject.getString("bank_type");
      localBankcard.eWT = paramJSONObject.getString("bind_serial");
      int i = paramJSONObject.optInt("bankacc_type", 2);
      boolean bool = false;
      if (2 == i)
        bool = true;
      localBankcard.eWU = bool;
      localBankcard.bTR = URLDecoder.decode(paramJSONObject.optString("mobile").replaceAll("x", "%"), "utf-8");
      localBankcard.eWK = (paramJSONObject.optDouble("once_quota_3") / 100.0D);
      localBankcard.eWL = (paramJSONObject.optDouble("once_quota_1") / 100.0D);
      localBankcard.eWM = (paramJSONObject.optDouble("day_quota_3") / 100.0D);
      localBankcard.eWN = (paramJSONObject.optDouble("day_quota_1") / 100.0D);
      localBankcard.eWQ = paramJSONObject.optString("bind_tail");
      if (1 == paramJSONObject.optInt("expired_flag", 0))
        localBankcard.eWW = 1;
      while (true)
      {
        localBankcard.eWJ = paramJSONObject.optString("bank_phone");
        localBankcard.eWV = paramJSONObject.optInt("bank_card_tag", 1);
        return localBankcard;
        if (paramJSONObject.optInt("bank_flag", 1) == 0)
          localBankcard.eWW = 2;
        else
          localBankcard.eWW = 0;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      return null;
    }
    catch (JSONException localJSONException)
    {
    }
    return null;
  }

  public static boolean jB(int paramInt)
  {
    return (paramInt & 0x2) > 0;
  }

  public static int jC(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return n.bGR;
    case 1:
      return n.bGK;
    case 4:
      return n.bGM;
    case 2:
      return n.bGQ;
    case 5:
      return n.bGI;
    case 6:
      return n.bGO;
    case 3:
      return n.bGV;
    case 7:
    }
    return n.bGT;
  }

  public static ArrayList v(ArrayList paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayList != null)
    {
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        Bankcard localBankcard = (Bankcard)localIterator.next();
        if ((localBankcard.eWW == 0) && (localBankcard.anf()))
          localArrayList.add(localBankcard);
      }
    }
    return localArrayList;
  }

  public final int a(int paramInt, Orders paramOrders)
  {
    double d = 0.0D;
    if (this.eWK > d)
      d = this.eWK;
    if (this.eWL > d)
      d = this.eWL;
    if (this.eWM > d)
      d = this.eWM;
    if ((this.eWN <= d) || (this.eWW != 0))
    {
      aa.d("MicroMsg.Bankcard", "Bankcard : " + this.eWT + ", bankcardState : " + this.eWW);
      return this.eWW;
    }
    if ((paramOrders != null) && (paramOrders.faP.equals(this.eWX)))
      return 4;
    int i;
    if ((paramInt & this.eWV) > 0)
      i = 1;
    while (i == 0)
      if (anf())
      {
        return 5;
        i = 0;
      }
      else
      {
        return 6;
      }
    if ((!paramOrders.faZ.isEmpty()) && (!paramOrders.faZ.contains(this.eWH)))
      return 7;
    return 0;
  }

  public final boolean anf()
  {
    return (0x1 & this.eWV) > 0;
  }

  public final int ang()
  {
    return this.eWW;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(this.dCO);
    paramParcel.writeString(this.eWH);
    paramParcel.writeString(this.eWT);
    int j;
    if (this.eWU)
    {
      j = i;
      paramParcel.writeInt(j);
      if (!this.eXa)
        break label157;
    }
    while (true)
    {
      paramParcel.writeInt(i);
      paramParcel.writeString(this.bTR);
      paramParcel.writeDouble(this.eWK);
      paramParcel.writeDouble(this.eWL);
      paramParcel.writeDouble(this.eWM);
      paramParcel.writeDouble(this.eWN);
      paramParcel.writeString(this.eWQ);
      paramParcel.writeString(this.eWJ);
      paramParcel.writeInt(this.eWV);
      paramParcel.writeInt(this.eWW);
      paramParcel.writeString(this.eWX);
      paramParcel.writeInt(this.eWY);
      paramParcel.writeString(this.eWZ);
      return;
      j = 0;
      break;
      label157: i = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.model.Bankcard
 * JD-Core Version:    0.6.2
 */