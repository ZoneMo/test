.class public final enum Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;
.super Ljava/lang/Enum;


# static fields
.field public static final enum BANKCARD:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

.field public static final enum BANKCARD_WITH_TAILNUM:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

.field public static final enum DEFAULT:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

.field public static final enum PASSWORD:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

.field public static final enum VALID_THRU:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

.field private static final synthetic a:[Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->DEFAULT:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    new-instance v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    const-string v1, "PASSWORD"

    invoke-direct {v0, v1, v3}, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->PASSWORD:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    new-instance v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    const-string v1, "BANKCARD"

    invoke-direct {v0, v1, v4}, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->BANKCARD:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    new-instance v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    const-string v1, "BANKCARD_WITH_TAILNUM"

    invoke-direct {v0, v1, v5}, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->BANKCARD_WITH_TAILNUM:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    new-instance v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    const-string v1, "VALID_THRU"

    invoke-direct {v0, v1, v6}, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->VALID_THRU:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    sget-object v1, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->DEFAULT:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->PASSWORD:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->BANKCARD:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->BANKCARD_WITH_TAILNUM:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->VALID_THRU:Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->a:[Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;
    .locals 1

    const-class v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    return-object v0
.end method

.method public static values()[Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;->a:[Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    array-length v1, v0

    new-array v2, v1, [Lcom/tenpay/android/wechat/TenpaySecureEditText$EditState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
