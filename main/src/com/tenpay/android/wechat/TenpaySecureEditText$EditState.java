package com.tenpay.android.wechat;

public enum TenpaySecureEditText$EditState
{
  static
  {
    BANKCARD = new EditState("BANKCARD", 2);
    BANKCARD_WITH_TAILNUM = new EditState("BANKCARD_WITH_TAILNUM", 3);
    VALID_THRU = new EditState("VALID_THRU", 4);
    EditState[] arrayOfEditState = new EditState[5];
    arrayOfEditState[0] = DEFAULT;
    arrayOfEditState[1] = PASSWORD;
    arrayOfEditState[2] = BANKCARD;
    arrayOfEditState[3] = BANKCARD_WITH_TAILNUM;
    arrayOfEditState[4] = VALID_THRU;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tenpay.android.wechat.TenpaySecureEditText.EditState
 * JD-Core Version:    0.6.2
 */