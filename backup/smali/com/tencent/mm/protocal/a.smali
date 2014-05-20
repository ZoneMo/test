.class public final Lcom/tencent/mm/protocal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static fxk:Ljava/lang/String;

.field public static final fxl:Ljava/lang/String;

.field public static final fxm:Ljava/lang/String;

.field public static final fxn:Ljava/lang/String;

.field public static final fxo:Ljava/lang/String;

.field public static final fxp:Ljava/lang/String;

.field public static final fxq:Ljava/lang/String;

.field public static fxr:I

.field private static final fxs:[I

.field private static final fxt:[I

.field public static fxu:Z

.field public static fxv:Z

.field public static final fxw:[B

.field public static final fxx:[B

.field public static final fxy:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/protocal/a;->fxk:Ljava/lang/String;

    .line 20
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mm/protocal/a;->fxl:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/protocal/a;->fxm:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/protocal/a;->fxn:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/protocal/a;->fxo:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/protocal/a;->fxp:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/protocal/a;->fxq:Ljava/lang/String;

    .line 27
    const v0, 0x25020031

    sput v0, Lcom/tencent/mm/protocal/a;->fxr:I

    .line 29
    const/16 v0, 0x28

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/protocal/a;->fxs:[I

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/mm/protocal/a;->fxt:[I

    .line 112
    invoke-static {}, Lcom/tencent/mm/protocal/a;->avC()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/mm/protocal/a;->fxu:Z

    .line 114
    invoke-static {}, Lcom/tencent/mm/protocal/a;->avB()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/mm/protocal/a;->fxv:Z

    .line 125
    sput-object v2, Lcom/tencent/mm/protocal/a;->fxw:[B

    .line 127
    sput-object v2, Lcom/tencent/mm/protocal/a;->fxx:[B

    .line 128
    sput-object v2, Lcom/tencent/mm/protocal/a;->fxy:[B

    .line 368
    const-string v0, "giveup rtType now ! Use the funcid !"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 369
    return-void

    .line 29
    :array_0
    .array-data 0x4
        0xa1t 0x0t 0x0t 0x24t
        0xa2t 0x0t 0x0t 0x24t
        0xb4t 0x0t 0x1t 0x24t
        0xb5t 0x0t 0x2t 0x24t
        0xb7t 0x0t 0x2t 0x24t
        0xb9t 0x0t 0x2t 0x24t
        0xbbt 0x0t 0x2t 0x24t
        0xd0t 0x0t 0x3t 0x24t
        0xd1t 0x0t 0x3t 0x24t
        0xd2t 0x0t 0x3t 0x24t
        0xd3t 0x0t 0x3t 0x24t
        0xf9t 0x0t 0x5t 0x24t
        0xfat 0x0t 0x5t 0x24t
        0x1t 0x0t 0x0t 0x25t
        0xat 0x0t 0x0t 0x25t
        0x10t 0x0t 0x0t 0x25t
        0x15t 0x0t 0x0t 0x25t
        0x16t 0x0t 0x0t 0x25t
        0x17t 0x0t 0x0t 0x25t
        0x8t 0x3t 0x0t 0x25t
        0x9t 0x3t 0x0t 0x25t
        0x15t 0x3t 0x0t 0x25t
        0x16t 0x3t 0x0t 0x25t
        0x17t 0x3t 0x0t 0x25t
        0x8t 0x4t 0x0t 0x25t
        0x9t 0x4t 0x0t 0x25t
        0xat 0x4t 0x0t 0x25t
        0xddt 0x4t 0x0t 0x25t
        0x8t 0x0t 0x1t 0x25t
        0xat 0x0t 0x1t 0x25t
        0xbt 0x0t 0x1t 0x25t
        0xct 0x0t 0x1t 0x25t
        0x0t 0x0t 0x2t 0x25t
        0x1t 0x0t 0x2t 0x25t
        0x12t 0x0t 0x2t 0x25t
        0x13t 0x0t 0x2t 0x25t
        0x14t 0x0t 0x2t 0x25t
        0x15t 0x0t 0x2t 0x25t
        0x18t 0x0t 0x2t 0x25t
        0x19t 0x0t 0x2t 0x25t
    .end array-data

    .line 70
    :array_1
    .array-data 0x4
        0x10t 0x0t 0x1t 0x25t
        0x11t 0x0t 0x1t 0x25t
        0x28t 0x0t 0x2t 0x25t
        0x29t 0x0t 0x2t 0x25t
        0x2at 0x0t 0x2t 0x25t
    .end array-data
.end method

.method private static avB()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 92
    :goto_0
    sget-object v2, Lcom/tencent/mm/protocal/a;->fxt:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 93
    sget-object v2, Lcom/tencent/mm/protocal/a;->fxt:[I

    aget v2, v2, v0

    sget v3, Lcom/tencent/mm/protocal/a;->fxr:I

    if-ne v2, v3, :cond_1

    .line 94
    const/4 v1, 0x1

    .line 97
    :cond_0
    return v1

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static avC()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 101
    :goto_0
    sget-object v2, Lcom/tencent/mm/protocal/a;->fxs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 102
    sget-object v2, Lcom/tencent/mm/protocal/a;->fxs:[I

    aget v2, v2, v0

    sget v3, Lcom/tencent/mm/protocal/a;->fxr:I

    if-ne v2, v3, :cond_1

    .line 106
    const/4 v1, 0x1

    .line 109
    :cond_0
    return v1

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static lg(I)V
    .locals 1
    .parameter

    .prologue
    .line 14
    sput p0, Lcom/tencent/mm/protocal/a;->fxr:I

    .line 15
    invoke-static {}, Lcom/tencent/mm/protocal/a;->avC()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/mm/protocal/a;->fxu:Z

    .line 16
    invoke-static {}, Lcom/tencent/mm/protocal/a;->avB()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/mm/protocal/a;->fxv:Z

    .line 17
    return-void
.end method
